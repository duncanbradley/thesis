# Magnitude ----
## Model ----
summary(e2_mag@model)
anova(e2_mag@model, e2_mag_cmpr)

e2_mag_cov <- lmer(add.terms(formula(e2_mag),
                           "con_slider.response"),
                   data = e2)

## Raw Data Plot ----
denom_labs <- c("Denominator Present in Text", 
                "Denominator Absent from Text")
names(denom_labs) <- c("pres", "abs")



e2 %>%
  ggplot(aes(x = mag_slider.response, y = axis)) +
  geom_jitter(width = 0,
              height = 0.2,
              alpha = 0.1) +
  scale_y_discrete(breaks = c("trunc", "full"),
                   labels = c("Truncated", "Extended")) + 
  labs(title = 'Experiment 2 - Magnitude',
       y = NULL,
       x = NULL) + 
  scale_x_continuous(labels = c('Very low\nmagnitude', 'Very high\nmagnitude'),
                     breaks = c(1,2),
                     minor_breaks = c()) + 
  facet_wrap(vars(denominator), ncol = 1, labeller = labeller(denominator = denom_labs)) +
  theme_minimal()

## Interaction Plot ----
emmip(e2_mag@model, axis ~ denominator, CIs = T) +
  scale_x_discrete(labels = c('Absent from text', 'Present in text')) +
  scale_color_discrete(labels = c('Truncated', 'Extended'))

## Contrasts ----
e2_mag_emm <- emmeans(e2_mag@model, pairwise ~ axis * denominator, adjust = 'sidak')$emmeans

e2_mag_contrast <- emmeans(e2_mag@model, pairwise ~ axis * denominator, adjust = 'sidak')$contrasts

# Confidence ----
## Model ----
summary(e2_con@model)
anova(e2_con@model, e2_con_cmpr)


## Raw Data Plot ----
e2 %>%
  ggplot(aes(x = con_slider.response, y = axis)) +
  geom_jitter(width = 0,
              height = 0.2,
              alpha = 0.1) +
  scale_y_discrete(breaks = c("trunc", "full"),
                   labels = c("Truncated", "Extended")) + 
  labs(title = 'Experiment 2 - Confidence',
       y = NULL,
       x = NULL) + 
  scale_x_continuous(labels = c('Not very confident', 'Very confident'),
                     breaks = c(1,2),
                     minor_breaks = c()) + 
  facet_wrap(vars(denominator), ncol = 1, labeller = labeller(denominator = denom_labs)) +
  theme_minimal()

## Interaction Plot ----
emmip(e2_con@model, axis ~ denominator, CIs = T) +
  scale_x_discrete(labels = c('Absent from text', 'Present in text')) +
  scale_color_discrete(labels = c('Truncated', 'Extended'))

## Contrasts ----
e2_con_emm <- emmeans(e2_con@model, pairwise ~ axis * denominator, adjust = 'sidak')$emmeans

e2_con_contrast <- emmeans(e2_con@model, pairwise ~ axis * denominator, adjust = 'sidak')$contrasts

