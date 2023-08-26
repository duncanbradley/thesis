library(tidyverse)
library(patchwork)

#### NOISE AND COLOUR ####

ww <- read_csv("c12.csv") %>%
  mutate(y = temp,
         x = 1:192,
         months = as.ordered(rep(month.name, each = 16)))

ww %>%
  group_by(months) %>%
  summarise(mean = mean(y))

# Specify custom axis tick positions and labels
custom_ticks <- seq(8, 186, by = 16)
custom_labels <- substr(month.name, 1, 3)

# Convert custom ticks and labels to a named character vector
custom_ticks_labels <- setNames(custom_labels, custom_ticks)

dd <- ww %>%
  ggplot(aes(y = y, x = x)) +
  scale_x_continuous(
    breaks = custom_ticks,
    labels = custom_ticks_labels,
    limits = c(1, 192), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 100), expand = c(0, 0)) +
  theme_grey(base_size = 11) +
  theme(
    panel.background = element_rect(color = "black", linewidth = 1, fill = NA),
    legend.position = "none"
  ) +
  labs(x = NULL, y = NULL)

noise_line <- dd +
  geom_vline(xintercept = seq(1, 192, 16),
             color = "black") +
  geom_line()

noise_color <- dd +
  geom_vline(data = ww,
             aes(xintercept = x, color = y),
             linewidth = 1.1) +
  scale_color_gradient(low = "cornflowerblue", high = "firebrick1") +
  geom_vline(xintercept = seq(1, 192, 16),
             color = "black")

noise_line + noise_color

#### TRUNCATION ####

vals <- c(48, 52)
cats <- c('A', 'B') 

mydf <- tibble(vals, cats)

baseplot <- mydf %>% 
  ggplot(aes(x = cats, y = vals, group = 1)) +
  labs(x = NULL, y = NULL) +
  theme_minimal(base_size = 12) +
  theme(panel.grid.major.x = element_blank())

line_trunc <- baseplot + 
  coord_cartesian(ylim = c(46, 54), 
                xlim = c(0.5, 2.5),
                expand = F) +
  geom_path(linewidth = 1) +
  labs(caption = 'Truncated Line Chart')

bar_trunc <- baseplot + 
  coord_cartesian(ylim = c(46, 54), 
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_col(width = 0.3) +
  labs(caption = 'Truncated Bar Chart')

line_full <- baseplot + 
  coord_cartesian(ylim = c(0, 100),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_path(linewidth = 1) +
  labs(caption = 'Non-Truncated Line Chart')

bar_full <- baseplot + 
  coord_cartesian(ylim = c(0, 100),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_col(width = 0.3) +
  labs(caption = 'Non-Truncated Bar Chart')

line_full + line_trunc + bar_full + bar_trunc +
  plot_layout(nrow = 1) 
  

#### ZACKS AND TVERSKY ####

#line chart ‘a building becomes more secure as the alarm system becomes more active’
#bar chart ’a building with 10 motion sensors is more secure than a building with 5 motion sensors’

# Discrete comparisons: 
#"Male’sheight is higher than that of female’s" 
#"Theaveragemaleis taller than the averagefemale." 
#"Twelveyr. olds are taller than 10 yr olds." 
#Trend assessments: 
#"The graph shows a positive correlation between a child’s increases in age and height betweenthe ages of 10 and 12."
#"Height increases with age. (from about 46 inches at 10 to 55inches at 12)"
#"Themoremalea personis, the taller he/she is"
ZT_bar <- baseplot + 
  coord_cartesian(ylim = c(0, 60),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_col(width = 0.3) +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank()) 

ZT_line <- baseplot + 
  coord_cartesian(ylim = c(0, 60),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_path() +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank()) 

ZT_bar + ZT_line

#### STACKED BARS ####

vals1 <- c(0, 6, 7, 10)
vals2 <- c(100, 94, 93, 90)
cats <- c('A', 'B', 'C', 'D') 

mydf <- tibble(vals1, cats)
mydf2 <- tibble(vals1, vals2, cats) %>%
  pivot_longer(cols = vals1:vals2)

stack1 <- mydf %>%
  ggplot(aes(x = vals1, y = cats)) +
  geom_col(width = 0.5, fill = '#4571a8') +
  scale_y_discrete(limits = rev) +
  theme_minimal() +
  coord_cartesian(ylim = c(0.5, 4.5),
                  xlim = c(0, 100),
                  expand = F) +
  labs(x = NULL, y = NULL) +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank())

stack2 <- mydf2 %>%
  ggplot(aes(x = value, y = cats, fill = name, group = cats)) +
  geom_col(width = 0.5, position = "stack") +
  scale_y_discrete(limits = rev) +
  theme_minimal() +
  coord_cartesian(ylim = c(0.5, 4.5),
                  xlim = c(0, 100),
                  expand = F) +
  labs(x = NULL, y = NULL) +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank(),
        legend.position = "none") +
  scale_fill_manual(values = c("#4571a8", "#a3a3a3"))

stack1 + stack2

