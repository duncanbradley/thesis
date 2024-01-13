library(ggplot2)
library(patchwork)
library(ggpubr)
library(magick)

reds_200a <- ggplot() + background_image(image_read("supermap_stimuli/E1_extend_blank.png"))
reds_200b <- ggplot() + background_image(image_read("supermap_stimuli/E1_extend_label.png"))
reds_200c <- ggplot() + background_image(image_read("supermap_stimuli/E1_trunc_blank.png"))
reds_200d <- ggplot() + background_image(image_read("supermap_stimuli/E1_trunc_label.png"))

reds_200a <- reds_200a + labs(subtitle = "Labels Absent", 
                              title = "Extended") +
  theme(plot.title = element_text(hjust=1, size = 30),
        plot.subtitle = element_text(hjust=0.5, size = 20))

reds_200b <- reds_200b + labs(subtitle = "Labels Present", 
                              title = "Range") +
  theme(plot.title = element_text(size = 30),
        plot.subtitle = element_text(hjust=0.5, size = 20))

reds_200c <- reds_200c + labs(subtitle = "Labels Absent", 
                              title = "Truncated") +
  theme(plot.title = element_text(hjust=1, size = 30),
        plot.subtitle = element_text(hjust=0.5, size = 20))

reds_200d <- reds_200d + labs(subtitle = "Labels Present", 
                              title = "Range") +
  theme(plot.title = element_text(size = 30),
        plot.subtitle = element_text(hjust=0.5, size = 20))

grey_300a <- ggplot() + background_image(image_read("supermap_stimuli/E8_extend_blank.png"))
grey_300b <- ggplot() + background_image(image_read("supermap_stimuli/E8_extend_label.png"))
grey_300c <- ggplot() + background_image(image_read("supermap_stimuli/E8_trunc_blank.png"))
grey_300d <- ggplot() + background_image(image_read("supermap_stimuli/E8_trunc_label.png"))

purp_400a <- ggplot() + background_image(image_read("supermap_stimuli/E15_extend_blank.png"))
purp_400b <- ggplot() + background_image(image_read("supermap_stimuli/E15_extend_label.png"))
purp_400c <- ggplot() + background_image(image_read("supermap_stimuli/E15_trunc_blank.png"))
purp_400d <- ggplot() + background_image(image_read("supermap_stimuli/E15_trunc_label.png"))

blue_700a <- ggplot() + background_image(image_read("supermap_stimuli/E34_extend_blank.png"))
blue_700b <- ggplot() + background_image(image_read("supermap_stimuli/E34_extend_label.png"))
blue_700c <- ggplot() + background_image(image_read("supermap_stimuli/E34_trunc_blank.png"))
blue_700d <- ggplot() + background_image(image_read("supermap_stimuli/E34_trunc_label.png"))

gree_800a <- ggplot() + background_image(image_read("supermap_stimuli/E41_extend_blank.png"))
gree_800b <- ggplot() + background_image(image_read("supermap_stimuli/E41_extend_label.png"))
gree_800c <- ggplot() + background_image(image_read("supermap_stimuli/E41_trunc_blank.png"))
gree_800d <- ggplot() + background_image(image_read("supermap_stimuli/E41_trunc_label.png"))

oran_900a <- ggplot() + background_image(image_read("supermap_stimuli/E48_extend_blank.png"))
oran_900b <- ggplot() + background_image(image_read("supermap_stimuli/E48_extend_label.png"))
oran_900c <- ggplot() + background_image(image_read("supermap_stimuli/E48_trunc_blank.png"))
oran_900d <- ggplot() + background_image(image_read("supermap_stimuli/E48_trunc_label.png"))

supermap <- 
  (reds_200a|reds_200b|reds_200c|reds_200d) / 
  (grey_300a|grey_300b|grey_300c|grey_300d) / 
  (purp_400a|purp_400b|purp_400c|purp_400d) / 
  (blue_700a|blue_700b|blue_700c|blue_700d) / 
  (gree_800a|gree_800b|gree_800c|gree_800d) / 
  (oran_900a|oran_900b|oran_900c|oran_900d)
  
ggsave(filename = paste0("supermap.png"), # save inside the 'instructions' folder
       width = 41, # width value
       height = 60, # height value
       units = "cm", # units for width and height
       dpi = 600)

