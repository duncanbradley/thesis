library(tidyverse)

# read in data
database <- read_csv('database.csv', 
         col_types = cols(.default = "?", genderResp2.text = col_character()))
# correct the coercion of the genderResp2.text to logical

# add correct, no_correct, outcome columns
# for assessing attention check responses
database <- database %>%
  mutate(AC_correct = case_when(item_no > 40 & correct_response == slider.response ~ TRUE,
                                item_no > 40 & correct_response != slider.response ~ FALSE)) %>%
  group_by(participant) %>%
  mutate(AC_no_correct = sum(AC_correct, na.rm = TRUE)) %>%
  mutate(AC_outcome = AC_no_correct < 5) %>%
  mutate(across(AC_outcome, as_factor)) %>%
  mutate(AC_outcome = recode(AC_outcome, 'TRUE' = "FAIL", 'FALSE' = "PASS")) 

# generate dataframe of Prolific IDs for manual rejection
rejections <- database %>% 
  filter(AC_outcome == "FAIL") %>%
  filter(!is.na(correct_response)) %>%
  dplyr::select(participant,
         list_number,
         slider.response,
         correct_response,
         AC_correct,
         AC_no_correct,
         AC_outcome)

# approvals
approved <- database %>% 
  filter(AC_outcome == "PASS") %>%
  filter(session != "62f529573fa8a531029d43c5") # removed as responses are second attempt

# export just the participant numbers and list numbers
approved %>% 
  select(participant,
         list_number) %>%
  filter(!is.na(list_number)) %>%
  unique() %>%
  write_csv('approved.csv')

# check the distribution of approved participants in each list
approved %>% 
  filter(!is.na(list_number)) %>%
  group_by(participant, list_number) %>%
  count() %>%
  group_by(list_number) %>%
  count()

# anonymisation
keys <- unique(approved$participant)
vals <- seq(1, length(unique(approved$participant)))
approved$participant <- vals[ match(approved$participant, keys) ]

# write_csv
approved %>%
  write_csv("anon_data1.csv")

# distribution of correct responses
database %>% 
  count(AC_no_correct) %>%
  ggplot(aes(x = AC_no_correct)) +
  geom_bar() +
  geom_vline(xintercept = 4.5) +
  labs(x = "Number of Correct Answers",
       y = "Count") +
  annotate("rect", xmin = 0, xmax = 4.5, ymin = 0, ymax = Inf,
           alpha = .2) +
  annotate("text", x = 2, y = 85,
           label = "FAIL") +
  annotate("text", x = 5.5, y = 85,
           label = "PASS") +
  theme_minimal()
