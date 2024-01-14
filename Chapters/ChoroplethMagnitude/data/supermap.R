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

blue_500a <- ggplot() + background_image(image_read("supermap_stimuli/E22_extend_blank.png"))
blue_500b <- ggplot() + background_image(image_read("supermap_stimuli/E22_extend_label.png"))
blue_500c <- ggplot() + background_image(image_read("supermap_stimuli/E22_trunc_blank.png"))
blue_500d <- ggplot() + background_image(image_read("supermap_stimuli/E22_trunc_label.png"))
  
gree_600a <- ggplot() + background_image(image_read("supermap_stimuli/E29_extend_blank.png"))
gree_600b <- ggplot() + background_image(image_read("supermap_stimuli/E29_extend_label.png"))
gree_600c <- ggplot() + background_image(image_read("supermap_stimuli/E29_trunc_blank.png"))
gree_600d <- ggplot() + background_image(image_read("supermap_stimuli/E29_trunc_label.png"))
  
oran_700a <- ggplot() + background_image(image_read("supermap_stimuli/E36_extend_blank.png"))
oran_700b <- ggplot() + background_image(image_read("supermap_stimuli/E36_extend_label.png"))
oran_700c <- ggplot() + background_image(image_read("supermap_stimuli/E36_trunc_blank.png"))
oran_700d <- ggplot() + background_image(image_read("supermap_stimuli/E36_trunc_label.png"))

reds_800a <- ggplot() + background_image(image_read("supermap_stimuli/E37_extend_blank.png"))
reds_800b <- ggplot() + background_image(image_read("supermap_stimuli/E37_extend_label.png"))
reds_800c <- ggplot() + background_image(image_read("supermap_stimuli/E37_trunc_blank.png"))
reds_800d <- ggplot() + background_image(image_read("supermap_stimuli/E37_trunc_label.png"))

grey_900a <- ggplot() + background_image(image_read("supermap_stimuli/E44_extend_blank.png"))
grey_900b <- ggplot() + background_image(image_read("supermap_stimuli/E44_extend_label.png"))
grey_900c <- ggplot() + background_image(image_read("supermap_stimuli/E44_trunc_blank.png"))
grey_900d <- ggplot() + background_image(image_read("supermap_stimuli/E44_trunc_label.png"))

supermap <- 
  (reds_200a|reds_200b|reds_200c|reds_200d) / 
  (grey_300a|grey_300b|grey_300c|grey_300d) / 
  (purp_400a|purp_400b|purp_400c|purp_400d) / 
  (blue_500a|blue_500b|blue_500c|blue_500d) / 
  (gree_600a|gree_600b|gree_600c|gree_600d) / 
  (oran_700a|oran_700b|oran_700c|oran_700d) /
  (reds_800a|reds_800b|reds_800c|reds_800d) / 
  (grey_900a|grey_900b|grey_900c|grey_900d)
  
ggsave(filename = paste0("supermap.png"), # save inside the 'instructions' folder
       width = 40, # width value
       height = 80, # height value
       units = "cm", # units for width and height
       dpi = 600)

