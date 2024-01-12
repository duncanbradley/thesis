library(ggplot2)
library(patchwork)
library(ggpubr)
library(magick)

img1 <- ggplot() + background_image(image_read("stimuli/AC49_extend_blank.png"))
img2 <- ggplot() + background_image(image_read("stimuli/AC49_extend_label.png"))
img3 <- ggplot() + background_image(image_read("stimuli/AC49_trunc_blank.png"))
img4 <- ggplot() + background_image(image_read("stimuli/AC49_trunc_label.png"))

vv <- (img1 | img2 | img3 | img4) / 
  (img1 | img2 | img3 | img4)
