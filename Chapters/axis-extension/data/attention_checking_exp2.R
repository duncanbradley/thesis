library(tidyverse)

# read in data
database <- read_csv('database.csv')
  
# create vector of second attempts
second_attempts <- database %>%
  filter(!is.na(total_duration)) %>% # get one row per attempt
  select(participant, date) %>% # select participant and date (date + time)
  group_by(participant) %>% # group_by participants
  filter(n() > 1) %>% # retain cases where multiple entries per participant
  slice_max(date) %>% # get later entry for each participant
  pull(date) # extract just the dates + times of the second attempts

# filter out the second attempts
database <- database %>%
  filter(!date %in% second_attempts)
  
# add columns for assessing attention check responses: correct, no_correct, outcome
database <- database %>%
  mutate(AC_correct = case_when(item_type == "AC" & correct_response == mag_slider.response ~ TRUE,
                                item_type == "AC" & correct_response != mag_slider.response ~ FALSE)) %>%
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
         list_no,
         mag_slider.response,
         correct_response,
         AC_correct,
         AC_no_correct,
         AC_outcome)

# generate dataframe of Prolific IDs for bulk approval
approved <- database %>% 
  filter(AC_outcome == "PASS")

# export just the approved Prolific IDs and list numbers
approved %>% 
  select(participant,
         list_no) %>%
  unique() %>%
  write_csv('approved.csv')

# check the distribution of approved participants in each list
approved %>% 
  group_by(participant, list_no) %>%
  count() %>%
  group_by(list_no) %>%
  count()

approved %>%
  group_by(item_no, axis, denominator) %>%
  count() %>%
  view()

# ANONYMISATION ####
# anonymisation - replace Prolific IDs with numbers
keys <- unique(approved$participant)
vals <- seq(1, length(unique(approved$participant)))
approved$participant <- vals[ match(approved$participant, keys) ]

# write anonymised dataset with approved participants to .csv
approved %>%
  write_csv("anon_data2.csv")

# distribution of attention check outcomes
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
