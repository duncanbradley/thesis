denom_labs <- c("Denominator Present in Text", 
                "Denominator Absent from Text")
names(denom_labs) <- c("pres", "abs")

e2 %>%
  ggplot(aes(x = mag_slider.response, 
             y = axis)) +
  geom_density_ridges(scale = 0,
                      colour = "lightgrey",
                      alpha = 0,
                      jittered_points = T,
                      position = position_raincloud(height = 0.3),
                      point_alpha = 0.05,
                      point_colour = "black",
                      point_size = 0.75) +
  geom_density_ridges(aes(height = after_stat(density)),
                      stat = "density",
                      scale = 0.5,
                      colour = "black",
                      fill = "darkgrey",
                      panel_scaling = FALSE) +
  geom_boxplot(outlier.shape=NA,
             width = 0.10,
             colour = "white",
             fill = "white",
             alpha = 0,
             lwd = 1,
             position = position_nudge(y=-.2)) +
  geom_boxplot(outlier.shape=NA,
               width = 0.09,
               colour = "black",
               fill = "white",
               alpha = 0.7,
               lwd = 0.5,
               position = position_nudge(y=-.2)) +
  scale_y_discrete(limits = c("extend", "default"),
                   labels = c("Extended\nAxis Limit", "Default\nAxis Limit")) + 
  labs(title = "Experiment 2 - Distribution of Magnitude Ratings",
       subtitle =  "Density Plots, Boxplots, and Raw Data",
       y = NULL,
       x = NULL) + 
  scale_x_continuous(labels = c('Very low\nmagnitude', 'Very high\nmagnitude'),
                     breaks = c(1,2),
                     minor_breaks = c()) + 
  facet_wrap(vars(denominator), ncol = 1, labeller = labeller(denominator = denom_labs)) +
  theme_minimal(base_size = 10) +
  theme(aspect.ratio = 0.3)

e1 %>%
  ggplot(aes(x = slider.response, 
             y = cond)) +
  geom_density_ridges(scale = 0,
                      colour = "lightgrey",
                      alpha = 0,
                      jittered_points = T,
                      position = position_raincloud(height = 0.3),
                      point_alpha = 0.05,
                      point_colour = "black",
                      point_size = 0.75) +
  geom_density_ridges(aes(height = after_stat(density)),
                      stat = "density",
                      scale = 0.5,
                      colour = "black",
                      fill = "darkgrey",
                      panel_scaling = FALSE) +
  geom_boxplot(outlier.shape=NA,
               width = 0.10,
               colour = "white",
               fill = "white",
               alpha = 0,
               lwd = 1,
               position = position_nudge(y=-.2)) +
  geom_boxplot(outlier.shape=NA,
               width = 0.09,
               colour = "black",
               fill = "white",
               alpha = 0.7,
               lwd = 0.5,
               position = position_nudge(y=-.2)) +
  scale_y_discrete(limits = c("extend", "default"),
                   labels = c("Extended\nAxis Limit", "Default\nAxis Limit")) + 
  labs(title = "Experiment 2 - Magnitude Ratings",
       subtitle =  "Raw Data",
       y = NULL,
       x = NULL) + 
  scale_x_continuous(labels = c('Very low\nmagnitude', 'Very high\nmagnitude'),
                     breaks = c(1,2),
                     minor_breaks = c()) +
  theme_minimal(base_size = 12) +
  theme(aspect.ratio = 0.6)

