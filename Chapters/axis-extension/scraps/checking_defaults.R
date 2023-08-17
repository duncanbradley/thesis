library(tidyverse)
library(ggh4x)

# create a 'graphs' folder
dir.create("graphs")

# create custom ggplot theme
my_theme <- function() {
  theme_minimal() + # use minimal theme as a starting point
    theme(aspect.ratio = 5 / 6, # use a 5/6 aspect ratio
          panel.grid.minor = element_blank(), # remove all minor gridlines
          panel.grid.major.x = element_blank(), # remove remaining vertical gridlines
          panel.grid.major.y = element_line(colour = "lightgrey"), # use light grey colour for remaining horizontal gridlines
          axis.ticks.y = element_blank(), # remove tick marks on y axis
          axis.text.y = element_text(size = 8), # set text size for numbers on y axis
          axis.text.x = element_text(size = 8), # set text size for numbers on x axis
          axis.title.x = element_text(size = 10), # set text size for title on x axis
          plot.background = element_rect(fill = "white", colour = "white")) # plotting area fill and border colour
}

item_no <- 1:100
means <- 1:100
sds <- means/10

# defaults - will be overwritten
seed_no <- 1 # use as default seed number
max_value <- 0 # maximum value in the dataset - will be generated in make_plots function
trunc_max <- 1 # value of highest gridline in the truncated graph - will be generated in make_plots function
# trunc_max is set higher than max_value initially so that the while loop can be entered on every trial

chart_data <- tibble(item_no, means, sds, seed_no, max_value, trunc_max)

# vector for x-axis labels
xlabs <- c('A', 'B', 'C', 'D', 'E')

# creating the make_plots function
# this takes a single-row dataframe (a slice() from the graph_data dataframe created above)
make_plots <- function(this_row) {
  
  # using pull() to extract single values from the dataframe
  item_no <- this_row %>% pull(item_no)
  means <- this_row %>% pull(means)
  sds <- this_row %>% pull(sds)
  seed_no <- this_row %>% pull(seed_no)
  max_value <- this_row %>% pull(max_value)
  trunc_max <- this_row %>% pull(trunc_max)

  while(seed_no %in% chart_data$seed_no[-item_no]) {

    seed_no <- seed_no + 1 # increase seed_no if at least one condition is met
    max_value <- max_value + 1 # increase max_value if at least one condition is met
    
    # create data again
    set.seed(seed_no) # set seed
    mydata <- rnorm(n = length(xlabs), # number of x-axis categories
                    mean = means, # sampling mean: proportion of the upper limit
                    sd = sds) # sampling standard deviation:
    mydata <- round(mydata) # round data
    
    # create df - a tibble with one column for x-axis values and another for y-axis values
    mydf <- tibble(xlabs, mydata) # treat the x-axis values as characters
    
    # create the truncated graph
    trunc_graph <- mydf %>%
      ggplot(aes(x = xlabs, # x-axis variable
                 y = mydata)) + # y-axis variable
      geom_col() + # for a bar chart
      labs(x = xlabs,
           y = NULL) + # x-axis label
      scale_y_continuous(expand = expansion(mult = c(.01, .05))) + # slightly expand below the data to prevent lowest gridline from being trimmed, use default expansion factor to expand above the data
      my_theme() + # add custom theme created earlier
      force_panelsizes(rows = unit(3, "cm"), cols = unit(4, "cm")) # function from ggh4x, to set the aspect ratio of the plotting panel
    
    # values need to be re-defined so that first condition in while loop can be checked again
    max_value <- max(mydata)
    trunc_breaks <- ggplot_build(trunc_graph)$layout$panel_params[[1]]$y$breaks
    trunc_max <- max(trunc_breaks[!is.na(trunc_breaks)])
    # these values are successfully passed outside the loop with a single assignment operator

  }
  
  # add new parameters to the graph_data dataframe
  chart_data$seed_no[item_no] <<- seed_no 
  chart_data$max_value[item_no] <<- max_value
  chart_data$trunc_max[item_no] <<- trunc_max
  
  print(paste("Processing Item Number", item_no))
  
}

lapply(1:nrow(chart_data), function(i) make_plots(slice(chart_data, i)))

chart_data <- chart_data %>%
  mutate(gridline_position = case_when(max_value > trunc_max ~ "below",
                                       max_value < trunc_max ~ "above",
                                       max_value == trunc_max ~ "same"))

chart_data %>% group_by(gridline_position) %>% summarise(n())
# 72% below

# test with and without rounding
# and with a different range of numbers