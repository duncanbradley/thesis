
noisedata <- read_csv("noisedata.csv") %>%
  mutate(y = y,
         x = 1:948,
         months = as.ordered(rep(month.name, each = 79))) %>% 
  filter(row_number() %% 3 != 1) %>% 
  filter(row_number() %% 3 != 1) %>%
  filter(row_number() %% 3 != 1) %>%
  filter(row_number() != c(277:280)) %>%
  mutate(x = 1:276) 

noisedata_summary <- noisedata %>%
  group_by(months) %>%
  summarise(mean = mean(y)) %>% arrange(mean)

# Specify custom axis tick positions and labels
custom_ticks <- seq(from = 11.5, to = 276, by = 23)
custom_labels <- substr(month.name, 1, 3)

# Convert custom ticks and labels to a named character vector
custom_ticks_labels <- setNames(custom_labels, custom_ticks)

noisedata <- noisedata %>%
  ggplot(aes(y = y, x = x)) +
  scale_x_continuous(
    breaks = custom_ticks,
    labels = custom_ticks_labels,
    limits = c(1, 276), expand = c(0, 0)) +
  scale_y_continuous(limits = c(0, 100), expand = c(0, 0)) +
  theme_grey(base_size = 11) +
  theme(
    panel.background = element_rect(color = "black", linewidth = 1, fill = NA),
    legend.position = "none",
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank()
  ) +
  labs(x = NULL, y = NULL)

noise_line <- dd +
  geom_vline(xintercept = seq(1, 276, 23),
             color = "black",
             linewidth = 0.8) +
  geom_line() +
  theme(panel.border = element_rect(colour = "black", fill=NA, linewidth=1))

noise_color <- dd +
  geom_vline(data = ww,
             aes(xintercept = x, color = y),
             linewidth = 1.2) +
  scale_color_gradient2(low = "blue", mid = "beige", high = "red", midpoint = 50) +
  geom_vline(xintercept = seq(1, 276, 23),
             color = "black",
             linewidth = 0.8) +
  theme(panel.border = element_rect(colour = "black", fill=NA, linewidth=1))

noise_line + noise_color

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


#### STACKED BARS ####


