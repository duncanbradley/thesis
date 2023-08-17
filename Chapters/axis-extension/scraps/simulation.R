library(tidyverse)
library(jtools)
library(interactions)
library(truncnorm)

M_e_pres <- rtruncnorm(1200, a = 0, b = 1, 0.25, 0.1)
M_t_pres <- rtruncnorm(1200, a = 0, b = 1, 0.27, 0.1)
M_e_abs <- rtruncnorm(1200, a = 0, b = 1, 0.25, 0.1)
M_t_abs <- rtruncnorm(1200, a = 0, b = 1, 0.85, 0.1)

C_e_pres <- rtruncnorm(1200, a = 0, b = 1, 0.7, 0.1)
C_t_pres <- rtruncnorm(1200, a = 0, b = 1, 0.7, 0.1)
C_e_abs <- rtruncnorm(1200, a = 0, b = 1, 0.7, 0.1)
C_t_abs <- rtruncnorm(1200, a = 0, b = 1, 0.25, 0.1)

mag_ratings <- c(M_e_pres, M_t_pres, M_e_abs, M_t_abs)
con_ratings <- c(C_e_pres, C_t_pres, C_e_abs, C_t_abs)
axis <- rep(c("extend", "trunc", "extend", "trunc"), each = 1200)
denom <- rep(c("pres", "pres", "abs", "abs"), each = 1200)

my_df <- tibble(mag_ratings, con_ratings, axis, denom) %>%
  mutate(across(c("axis", "denom"), as_factor))

contrasts(my_df$axis) <- matrix(c(-.5, .5))
contrasts(my_df$denom) <- matrix(c(-.5, .5))



my_df %>%
  ggplot(aes(x = denom, y = mag_ratings)) +
  geom_jitter() +
  facet_wrap(vars(axis))

my_df %>%
  ggplot(aes(x = denom, y = con_ratings)) +
  geom_jitter() +
  facet_wrap(vars(axis))

cor(my_df$mag_ratings, my_df$con_ratings)
# very strong correlation

int_3way_mag <- lm(mag_ratings ~ con_ratings * axis * denom, data = my_df)
interact_plot(int_3way_mag,
              pred = con_ratings,
              modx = axis,
              mod2 = denom)
summary(int_3way_mag)

cov_model <- lm(mag_ratings ~  axis * denom + con_ratings, 
                  #con_ratings:axis + con_ratings:denom,
                  data = my_df)
cat_plot(cov_model,
              pred = axis,
              modx = denom)
summary(cov_model)

# https://towardsdatascience.com/interaction-analyses-appropriately-adjusting-for-control-variables-d34dfbdd781a
# Inflated false-positives if models do not include Covariate-by-Predictor Interactions

# On the effect of ignoring correlation in the covariates when fitting linear mixed models
# https://www.sciencedirect.com/science/article/abs/pii/S0378375819300333

# There's a very strong correlation between the two ratings, so
# I'm expecting the interaction to diminish/disappear 
# once we take into account confidence, but it doesn't.

con_model <- lm(con_ratings ~ axis * denom, data = my_df)
cat_plot(con_model,
         pred = axis,
         modx = denom,
         pred.labels = c('Extended Axis', 'Truncated Axis'),
         modx.labels = c('Present', 'Absent')) +
  ggtitle("Confidence Ratings")
summary(con_model)

mag_model <- lm(mag_ratings ~ axis * denom, data = my_df)
cat_plot(mag_model,
         pred = axis,
         modx = denom,
         pred.labels = c('Extended Axis', 'Truncated Axis'),
         modx.labels = c('Present', 'Absent')) +
  ggtitle("Magnitude Ratings")
summary(mag_model)

# essentially, the covariate interaction doesn't seem to be sensitive enough to 
# be able to detect a 3-way interaction or for the covariate to affect the significance
# of the 2-way interaction. 

# so the only thing left is to run two separate models, 
# one on magnitude ratings and one on confidence ratings

# how do I justify this
# we want to run the same analysis as in E1
# but we don't know if Ps' ratings will be reliable
# in case they have particularly low confidence in 1/4 trials
# so to check if this is the case
# we will separately analyse confidence ratings


# WRANGLING ----
# read in the data
dataset <- read_csv("anonymised_dataset.csv")

# create new dataframe with only experimental items
experimental <- dataset %>%
  filter(item_no <= 32)
# this must be done before converting item_no to character

# change the data type for relevant columns
experimental <- experimental %>%
  mutate(across(cond, as_factor),
         across(c(item_no, participant), as.character))

mini <- experimental %>%
  dplyr::select(item_no, participant, cond, slider.response)

new_full_values <- mini %>% 
  rbind(filter(mini, cond == "full")) %>%
  cbind(denominator = rep(""))

new_trunc_values <- mini %>%
  filter(cond == "trunc") %>%
  dplyr::select(-slider.response) %>%
  cbind(slider.response = rnorm(2400, 0.6, 0.1))

mini <- mini %>%
  rbind(new_trunc_values,
        new_full_values)

mini %>%
  group_by(cond)  %>%
  summarise(count = n(), mean = mean(slider.response), sd = sd(slider.response))

# then for the right number of observations, remove participants with odd numbers

mini %>% 
  ggplot(aes(x = slider.response,
             y = cond,
             fill = cond)) + 
  geom_density_ridges(#colour = "white",
                      #jittered_points = TRUE, 
                      #alpha = 0.05,
                      scale = 0.6,
                      point_colour = "black") +
  labs(x = "Magnitude Rating",
       y = NULL) +
  theme_minimal() +
  scale_x_continuous(breaks = c(0,1),
                     minor_breaks = c(),
                     labels = c())  
  