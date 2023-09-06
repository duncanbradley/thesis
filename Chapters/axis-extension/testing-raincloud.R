denom_labs <- c("Denominator Present in Text", 
                "Denominator Absent from Text")
names(denom_labs) <- c("pres", "abs")

e2 %>%
  ggplot(aes(x = mag_slider.response, 
             y = axis)) +
  geom_density_ridges(scale = 0,
                      colour = "green", 
                      alpha = 1,
                      jittered_points = T,
                      position = position_raincloud(height = 0.2),
                      point_alpha = 0.1,
                      point_colour = "grey"
  ) +
  geom_density(scale = 0.2, colour = "red") +
  geom_boxplot(outlier.shape=NA,
             width = 0.10,
             colour = "white",
             fill = "white",
             alpha = 0,
             lwd = 1,
             position = position_nudge(y=-.15)) +
  geom_boxplot(outlier.shape=NA,
               width = 0.09,
               colour = "black",
               fill = "white",
               alpha = 0.7,
               lwd = 0.5,
               position = position_nudge(y=-.15)) +
  scale_y_discrete(limits = c("extend", "default"),
                   labels = c("Extended\nAxis Limit", "Default\nAxis Limit")) + 
  labs(title = "Experiment 2 - Magnitude Ratings",
       subtitle =  "Raw Data",
       y = NULL,
       x = NULL) + 
  scale_x_continuous(labels = c('Very low\nmagnitude', 'Very high\nmagnitude'),
                     breaks = c(1,2),
                     minor_breaks = c()) + 
  facet_wrap(vars(denominator), ncol = 1, labeller = labeller(denominator = denom_labs)) +
  theme_minimal(base_size = 16) +
  theme(aspect.ratio = 0.6)
