library(tidyverse)

# reading in data
E1_raw <- read_csv("E1_raw.csv")
E2_raw <- read_csv("E2_raw.csv")

E1_prolific <- read_csv("E1_prolific.csv")
E2_prolific1 <- read_csv("E2_prolific1.csv")
E2_prolific2 <- read_csv("E2_prolific2.csv")

# bind the two separate files
E2_prolific <- rbind(E2_prolific1, E2_prolific2)

# creating a dataframe with correct answers:
corr_38 <- c(38, 1, 1)
corr_39 <- c(39, 1, 7)
corr_40 <- c(40, 7, 1)
corr_41 <- c(41, 7, 7)
corr_42 <- c(42, 1, 1)

correct_answers <- rbind(corr_38, corr_39, corr_40, corr_41, corr_42)
colnames(correct_answers) <- c("item_no", "chance_answer", "severity_answer")
correct_answers <- correct_answers %>% as_tibble()

# removing participants whose data is not usable
# all participants who were excluded but passed attention checks were paid
# for their participation
E1_database <- E1_raw %>%
  filter(
    session != "001", # researcher testing data saving on Pavlovia
    session != "0ocwabqfaros"
  ) # researcher testing redirect to Prolific
# session == "{{%SESSION_ID%}}" is a valid participant:
# this participant was sent a direct link to the study
# after insufficient credit had been assigned on Pavlovia (researcher error)

E2_database <- E2_raw %>%
  filter(session != "6194d18a77dd8d646e2ddce8") # manual completion after exceeding maximum completion time
# participant excluded here was still paid for their participation

# define responses to attention check questions as correct or incorrect
check_responses <- function(database, .y) {
  database %>%
    select(
      participant,
      item_no,
      chance_slider.response,
      severity_slider.response
    ) %>%
    inner_join(correct_answers, by = "item_no") %>%
    mutate(
      "chance" = (chance_slider.response == chance_answer),
      "severity" = (severity_slider.response == severity_answer)
    ) %>%
    select(
      participant,
      chance,
      severity
    ) %>%
    pivot_longer(chance:severity, names_to = "slider", values_to = "correct") %>%
    select(-slider) %>%
    group_by(participant) %>%
    summarise(no_correct = sum(correct)) %>%
    mutate(outcome = case_when(
      no_correct >= 8 ~ "ACCEPT",
      no_correct < 8 ~ "REJECT"
    )) %>%
    assign(paste0("E", .y, "_outcomes"),
      value = ., envir = .GlobalEnv
    ) %>%
    inner_join(database, by = "participant") %>%
    assign(paste0("E", .y, "_database"),
      value = ., envir = .GlobalEnv
    )
}

imap(
  list(
    E1_database,
    E2_database
  ),
  check_responses
)

# join prolific files
E1_joined <- E1_prolific %>%
  select(`Participant id`, `Time taken`) %>%
  rename(
    participant = `Participant id`,
    time_taken = `Time taken`
  ) %>%
  right_join(
    y = E1_database, # include all rows in pavlovia database
    by = "participant"
  )

E2_joined <- E2_prolific %>%
  select(`Participant id`, `Time taken`) %>%
  rename(
    participant = `Participant id`,
    time_taken = `Time taken`
  ) %>%
  right_join(
    y = E2_database, # include all rows in pavlovia database
    by = "participant"
  )

anonymise <- function(joined, .y) {
  joined %>%
    filter(outcome == "ACCEPT") %>%
    mutate(participant = match(
      participant,
      unique(participant)
    )) %>%
    select(-`__participant`) %>%
    assign(paste0("E", .y, "_anon"),
      value = ., envir = .GlobalEnv
    ) %>%
    write_csv(paste0("E", .y, "_anon.csv"))
}

imap(
  list(
    E1_joined,
    E2_joined
  ),
  anonymise
)
