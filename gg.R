library(tidyverse)
library(maps)
library(mapproj)
library(patchwork) 

mydf <- mtcars %>%
  select(gear) %>%
  mutate(gear = case_match(gear, 
                           3 ~ 'A',
                           4 ~ 'B',
                           5 ~ 'C')) %>%
  mutate(gear = as.factor(gear)) 

mydf2 <- tibble(cat = factor(c('C', 'B', 'A')), 
                cont = c(5, 12, 15))

level_order <- c('A', 'B', 'C') 

base_plot_df2 <- ggplot(mydf2, 
                        aes(x = factor(cat,
                                       levels = rev(level_order)), 
                            y = cont,
                            fill = cat)) 

base_plot_df <- ggplot(mydf, aes(x = factor(gear, 
                                            levels = rev(level_order)), 
                                 fill = factor(gear)))

cartesian_theme <- function() {
  theme_void() +
  theme(axis.line.x = element_line(colour = 'black', 
                                            linewidth = 0.5, 
                                            linetype='solid'),
                 axis.line.y = element_line(colour = 'black', 
                                            linewidth = 0.5, 
                                            linetype='solid'))
}

bar <- base_plot_df +
  geom_bar(width = 1, colour = "black") +
  lims(y = c(0, 17)) +
  guides(fill = "none") +
  scale_fill_brewer(palette = "Set2") +
  cartesian_theme()

bar

cxc <- bar + coord_polar() + theme_void()
cxc

dot <- base_plot_df2 +
  geom_point(size = 3, colour = "black", shape = 21) +
  guides(fill = "none") +
  lims(y = c(0, 17)) +
  scale_fill_brewer(palette = "Set2") +
  cartesian_theme()
dot
  
sbar <- ggplot(mydf, aes(x = factor(1), 
                         fill = factor(gear, levels = level_order))) +
  geom_bar(width = 0.5, colour = "black") + 
  guides(fill = "none") +
  scale_fill_brewer(palette = "Set2") +
  cartesian_theme()
sbar

pie <- sbar + 
  coord_polar(theta = "y") + 
  theme_void()
pie

bar2 <- ggplot(mydf2, aes(x = factor(cat, 
                                     levels = rev(level_order)), 
                          y = cont,
                          fill = cont)) +
  geom_bar(stat = "identity", width = 1, colour = "black") + 
  guides(fill = "none") +
  lims(y = c(0, 17)) +
  scale_fill_continuous(trans = "reverse") +
  cartesian_theme()
bar2

nc <- sf::st_read(system.file("shape/nc.shp", 
                              package = "sf"), 
                  quiet = TRUE) %>%
  filter(NAME %in% c("Greene", "Lenoir", "Pitt")) %>%
  select(NAME, geometry) %>%
  arrange(NAME) %>%
  cbind(mydf2)

choro <- nc %>%
  ggplot() +
  geom_sf(aes(fill = cont), colour = "black", linewidth = 0.5) + 
  theme_void() +
  scale_fill_gradient(trans = 'reverse') +
  guides(fill = "none") 
choro

bar + dot +
bar + cxc +
sbar + pie +
bar2 + choro +
plot_layout(nrow = 2,
            heights = 1) +
plot_annotation(tag_levels = 'A')


