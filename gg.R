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

mydf2 <- tibble(cat = factor(c('C', 'B', 'A')), cont = c(5, 12, 15))

level_order <- c('A', 'B', 'C') 
  
sbar <- ggplot(mydf, aes(x = factor(1), fill = factor(gear, levels = level_order))) +
  geom_bar(width = 0.5, colour = "black") + theme_void() +
  guides(fill = "none") +
  theme(axis.line.x = element_line(colour = 'black', linewidth = 0.5, linetype='solid'),
        axis.line.y = element_line(colour = 'black', linewidth = 0.5, linetype='solid')) +
  scale_fill_brewer(palette = "Set2")

pie <- sbar + coord_polar(theta = "y") + theme_void()

dot <- ggplot(mydf2, aes(x = factor(cat, 
                                   levels = rev(level_order)), 
                        y = cont,
                        fill = cat
                        )) +
  geom_point(size = 3, colour = "black", shape = 21) +
  theme_void() +
  guides(fill = "none") +
  theme(axis.line.x = element_line(colour = 'black', linewidth = 0.5, linetype='solid'),
        axis.line.y = element_line(colour = 'black', linewidth = 0.5, linetype='solid')) +
  lims(y = c(0, 17)) +
  scale_fill_brewer(palette = "Set2")

dot2 <- ggplot(mydf2, aes(x = factor(cat, 
                                    levels = rev(level_order)), 
                         y = cont,
                         fill = cont
)) +
  geom_point(size = 3, colour = "black", shape = 21) +
  theme_void() +
  guides(fill = "none") +
  theme(axis.line.x = element_line(colour = 'black', linewidth = 0.5, linetype='solid'),
        axis.line.y = element_line(colour = 'black', linewidth = 0.5, linetype='solid')) +
  lims(y = c(0, 17)) +
  scale_fill_continuous(trans = "reverse")


bar <- ggplot(mydf, aes(x = factor(gear, 
                                   levels = rev(level_order)), 
                        fill = factor(gear))) +
  geom_bar(width = 1, colour = "black") +
  theme_void() +
  lims(y = c(0, 17)) +
  guides(fill = "none") +
  theme(axis.line.x = element_line(colour = 'black', linewidth = 0.5, linetype='solid'),
        axis.line.y = element_line(colour = 'black', linewidth = 0.5, linetype='solid')) +
  scale_fill_brewer(palette = "Set2")
cxc <- bar + coord_polar() + theme_void()

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
  

(bar | dot ) +
(bar | cxc ) +
(sbar | pie) +
(dot2 | choro)

bar + dot +
  bar + cxc +
  sbar + pie +
  dot2 + choro +
  plot_layout(nrow = 2,
              heights = 1) +
  plot_annotation(tag_levels = 'A')


