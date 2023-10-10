library(tidyverse)
library(ggimage)

df_img <- data.frame(year = c("1964", "1975", "1990"),
                     year2 = c(1.2, 3.25, 4.6),
                     image = "doctor.png")
#https://pixabay.com/vectors/doctor-robe-medicine-medical-6207110/
#resized to have same dimensions as Los Angeles Times original

ggplot(df_img, aes(x = rev(year2), y = 0, image = image)) +
  geom_hline(yintercept = 0.9) +
  scale_x_continuous(position = "top", 
                     limits = c(-0.2, 4.6),
                     expand = c(0,0)) +
  scale_y_continuous(limits = c(-1,1), 
                     expand = c(0,0)) + 
  geom_image(size = rev(c(1, 16/27, 12/27)), by="height")+
  #scale_size_identity() +
  labs(title = "THE SHRINKING FAMILY DOCTOR",
       subtitle = "In California",
       x = "Percentage of Doctors Devoted Solely to Family Practice",
       y = NULL) +
  theme(text = element_text(family="Roboto Condensed"),
        panel.grid.major.x = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        plot.title = element_text(hjust = 0.5, face="bold",size=11),
        plot.subtitle = element_text(hjust = 0.5, face="bold"),
        axis.title.x = element_text(size = 6),
        aspect.ratio = 1.5,
        plot.margin = margin(0.5, 1, 1, 0.5, "cm"),
        plot.background = element_rect(fill = "white"),
        panel.background = element_rect(fill = "white")
        ) +
  coord_cartesian(clip = "off") +
  geom_text(label = c("1964", "1975", "1990"),
            x = c(0,3.25,4.6),
            y = 0.97,
            family="Roboto Condensed",
            size = 2.5) +
  geom_text(label = c("27%", "16.0%", "12.0%"),
            x = c(0,3.25,4.6),
            y = 0.83,
            family="Roboto Condensed",
            size = 2.5,
            fontface = "bold") +
  geom_text(label = c("1: 2,247 Ratio to Population", "1: 3,167", "1: 4,232"),
            x = c(-0.2,3.25,4.6),
            y = c(-1.05, -0.65, -0.5),
            family="Roboto Condensed",
            size = 2.5,
            hjust = c(0, 0.5, 0.5)) +
  geom_text(label = c("8,023 Doctors", "6,694", "6,212"),
            x = c(1.1,3.25,4.6),
            y = c(-1.15, -0.75, -0.6),
            family="Roboto Condensed",
            size = 2.5,
            fontface= "bold")
