library(tidyverse)
library(lme4)
library(buildmer)
library(qwraps2)
library(emmeans)
library(broom.mixed)
library(effectsize)
library(papaja)
library(car)

lazyload_cache_dir('axis-extension_cache/html')

e2_con
e2_con_l

e2_mag_emm %>% 
  contrast("consec", 
           simple = "each", 
           combine = TRUE, 
           adjust = "sidak") %>%
  as_tibble()

car::Anova(e2_mag@model,type="III",test.statistic="Chisq")

drop1(e2_mag@model,scope=c("axis","denominator","axis:denominator"),test="Chisq")

drop.scope(terms(e2_mag@model))

comparison(e1_mag, NULL)

anova_results(e2_con_cmpr, e2_con)

e2_con@summary
summary(e2_con@summary)
anova(e2_con) %>% as_tibble(rownames = "fixed_effect", .name_repair = make.names) %>%
  rename("Pr" = "Pr..F.")

emmip(e2_con@model, denominator ~ axis, CIs = T) +
  scale_color_discrete(limits = c('abs', 'pres'), 
                       labels = c('Absent from text', 'Present in text')) +
  scale_x_discrete(limits = c('full', 'trunc'), 
                   labels = c('Extended', 'Truncated')) +
  scale_y_continuous(limits = c(1,2), 
                     breaks = c(1,2), 
                     minor_breaks = seq(1,2,0.2),
                     labels = c('Very low\nmagnitude', 
                                'Very high\nmagnitude')) + 
  labs(x = "Axis Upper Bound",
       y = "Magnitude Rating",
       color = "Denominator in Text",
       title = "Experiment 2 - Magnitude Ratings",
       subtitle = "Estimated Marginal Means") + 
  theme_minimal(base_size = 14)

mydf <- tibble(axis = c("full", "trunc"), filler = c("fill", "fill"))
mydf
mydf %>% mutate(across(matches(c("cond", "axis")), ~ case_match(.x, "full" ~ "extend", "trunc" ~ "default")))


summary_extract <- function(model) {
  
  model_name <- deparse(substitute(model))
  
  if (class(model) == "buildmer") model <- model@model
  
  es <- eta_squared(anova(model), partial = TRUE) 
  
  e2_mag_l %>% 
    anova() %>%
    as_tibble(rownames = "term", 
              .name_repair = make.names) %>%
    rename("p" = "Pr..F.") %>%
    inner_join(es, by = join_by("term" == "Parameter")) %>%
    mutate(term = str_replace(term, ":", "_")) %>%
    group_split(term) %>%
    map(~ {
      vals <- as.list(.x)
      names(vals) <- paste0("model_name", 
                            "_", 
                            .x$term, 
                            "_", 
                            names(vals))
      list2env(vals, envir = globalenv())
    })
  
}