library(tidyverse)
library(patchwork)

original <- rep_len(seq(from = 400, to = 600, by = 100), length.out = 32)
new <- rep(seq(from = 600, to = 2000, by = 200), length.out = 32)

#upper_lim <- c(rep_len(seq(from = 400, to = 600, by = 100), length.out = 32), # maximum possible value for the data
#               c(400, 400, 600, 600), # first four fillers have maximum possible values which resemble y-axis limits in 'full' graphs
#               c(100, 100, 200, 200), # last four fillers have maximum possible values which resemble y-axis limits in 'truncated' graphs

upper_lims <- tibble(original, new) 

p1 <- upper_lims %>%
  ggplot(aes(x = original)) +
  geom_bar(width = 50) +
  xlim(300, 2100)

p2 <- upper_lims %>%
  ggplot(aes(x = new)) +
  geom_bar(width = 50) +
  xlim(300, 2100)

p1 / p2

