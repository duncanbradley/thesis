library(tidyverse)

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
  theme(
    panel.background = element_rect(color = "black", size = 1, fill = NA)
  ) +
  labs(x = NULL, y = NULL)

dd +
  geom_vline(xintercept = seq(1, 192, 16),
             color = "black") +
  geom_line()

dd +
  geom_vline(data = ww,
             aes(xintercept = x, color = y),
             linewidth = 1.1) +
  scale_color_gradient(low = "cornflowerblue", high = "firebrick1") +
  geom_vline(xintercept = seq(1, 192, 16),
             color = "black")

vals <- c(48, 52)
cats <- c('A', 'B') 

mydf <- tibble(vals, cats)

baseplot <- mydf %>% 
  ggplot(aes(x = cats, y = vals, group = 1)) +
  labs(x = NULL, y = NULL) +
  theme_minimal(base_size = 12) +
  theme(panel.grid.major.x = element_blank())

baseplot + 
  coord_cartesian(ylim = c(46, 54), 
                xlim = c(0.5, 2.5),
                expand = F) +
  geom_path(linewidth = 1) 

baseplot + 
  coord_cartesian(ylim = c(46, 54), 
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_col(width = 0.3) 

baseplot + 
  coord_cartesian(ylim = c(0, 100),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_path(linewidth = 1) 

baseplot + 
  coord_cartesian(ylim = c(0, 100),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_col(width = 0.3) 
  
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
baseplot + 
  coord_cartesian(ylim = c(0, 60),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_col(width = 0.3) +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank()) 

baseplot + 
  coord_cartesian(ylim = c(0, 60),
                  xlim = c(0.5, 2.5),
                  expand = F) +
  geom_col(width = 0.3) +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank()) 

vals1 <- c(0, 6, 7, 10)
vals2 <- c(100, 94, 93, 90)
cats <- c('A', 'B', 'C', 'D') 

mydf <- tibble(vals1, cats)
mydf2 <- tibble(vals1, vals2, cats) %>%
  pivot_longer(cols = vals1:vals2)

mydf %>%
  ggplot(aes(x = vals1, y = cats)) +
  geom_col(width = 0.5) +
  scale_y_discrete(limits = rev) +
  theme_minimal() +
  coord_cartesian(ylim = c(0.5, 4.5),
                  xlim = c(0, 100),
                  expand = F) +
  labs(x = NULL, y = NULL) +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank()) 

mydf2 %>%
  ggplot(aes(x = value, y = cats, fill = name)) +
  geom_col(width = 0.5, position = "fill") +
  scale_y_discrete(limits = rev) +
  theme_minimal() +
  coord_cartesian(ylim = c(0.5, 4.5),
                  xlim = c(0, 1),
                  expand = F) +
  labs(x = NULL, y = NULL) +
  theme(panel.border = element_rect(fill = NA),
        panel.grid.major.y = element_blank(),
        panel.grid.minor = element_blank()) 

