library(tidyverse)

E1 <- read_csv('E1scenarios.csv')
E2 <- read_csv('scenarios.csv')

E1 <- E1 %>% 
  select(sentence1, sentence2, item_no) %>%
  filter(item_no < 41) %>%
  rename("sentence3" = sentence2) %>%
  separate(sentence1, 
           into = c("sentence1", "sentence2"),
           sep = "\\. ",
           remove = FALSE) %>%
  mutate(sentence1 = paste0(sentence1, "."))
  
E2 <- E2 %>% 
  select(sentence1, sentence2,
         sentence3, item_no) %>%
  filter(item_no < 41)

fulldf <- full_join(E1, E2, by = "item_no")

write_csv(fulldf, "fulldf.csv")
