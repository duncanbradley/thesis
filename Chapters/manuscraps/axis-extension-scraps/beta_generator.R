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

# create dataframe used to generate graphs
# 46 items (32 experimental, 8 filler, 6 attention check)
item_no <- 1:70 # numerical identifiers for each item

item_type <- c(rep('E', 32), rep('F', 32), rep('AC', 6)) # 32 Experimental, 8 Filler, 6 Attention Check

upper_lim <- c(rep_len(seq(from = 200, to = 800, by = 200), length.out = 64),
               rep_len(seq(from = 400, to = 600, by = 100), length.out = 6)) # attention check items have maximum possible values like the experimental items

prop <- c(rep(c(.2, .4), each = 16), # in experimental items, the mean for the sampling distribution will be 20% or 40% of upper_lim
          rep(.9, times = 32), # in filler items, the mean for the sampling distribution will be 90% of upper_lim
          rep(c(.2, .4), each = 3)) # attention check questions have the same proportion values as experimental items

seed_no <- 1 # use as default seed number
max_value <- 0 # maximum value in the dataset - will be generated in make_plots function
trunc_max <- 1 # value of highest gridline in the truncated graph - will be generated in make_plots function
# trunc_max is set higher than max_value initially so that the while loop can be entered on every trial

correct_response <- c(rep(NA, 64), 1, 1, 1.5, 1.5, 2, 2) # correct response for attention check questions

granularity_val <- c(rep(0, 64), rep(0.5, 6)) # granularity of reponse slider

graph_data <- tibble(item_no, 
                     item_type, 
                     upper_lim, 
                     prop, 
                     seed_no, 
                     max_value, 
                     trunc_max, 
                     correct_response,
                     granularity_val) # combine the above vectors into a dataframe

# read in scenarios.csv file
scenarios <- read_csv("scenarios.csv")

# separating sentences in scenarios
# scenarios %>%
#   separate(col = sentence1, into = c("sentence1", "sentence2"), sep = "\\. ") %>%
#   mutate(sentence1 = paste0(sentence1, ".")) %>%
#   write_csv("scenarios.csv")

# join graph_data with scenarios dataframe, by item number
graph_data <- graph_data %>%
  inner_join(scenarios, by = "item_no") %>%
  mutate(sentence1 = str_replace_all(sentence1, " x ", " five ")) %>% # replace 'x' placeholder with actual value
  mutate(sentence1 = str_replace_all(sentence1, " y ", paste0(" ", upper_lim, " ")))  # replace 'y' placeholder with actual value

# vector for x-axis labels
xlabs <- c('A', 'B', 'C', 'D', 'E')

# creating the make_plots function
# this takes a single-row dataframe (a slice() from the graph_data dataframe created above)
make_plots <- function(this_row) {
  
  # using pull() to extract single values from the dataframe
  item_no <- this_row %>% pull(item_no)
  item_type <- this_row %>% pull(item_type)
  upper_lim <- this_row %>% pull(upper_lim)
  prop <- this_row %>% pull(prop)
  seed_no <- this_row %>% pull(seed_no)
  max_value <- this_row %>% pull(max_value)
  trunc_max <- this_row %>% pull(trunc_max)
  variable <- this_row  %>% pull(variable)
  
  while(seed_no %in% graph_data$seed_no[-item_no] |
        max_value <= trunc_max*1.01) {

    # max_value <= trunc_max*1.01
    
    
    seed_no <- seed_no + 1 # increase seed_no if at least one condition is met
    max_value <- max_value + 1 # increase max_value if at least one condition is met
    
    # create data again
    set.seed(seed_no) # set seed
    mydata <- rnorm(n = length(xlabs), # number of x-axis categories
                    mean = upper_lim*prop, # sampling mean: proportion of the upper limit
                    sd = upper_lim/100) # sampling standard deviation:
    mydata <- round(mydata) # round data
    
    # create df - a tibble with one column for x-axis values and another for y-axis values
    mydf <- tibble(xlabs, mydata, variable) # treat the x-axis values as characters
    
    # create full (non-truncated) graph
    full_graph <- mydf %>%
      ggplot(aes(x = xlabs, # x-axis variable
                 y = mydata)) + # y-axis variable
      geom_col() + # for a bar chart
      labs(x = variable,
           y = NULL) + # x-axis label)
      coord_cartesian(clip = "off") + # to prevent highest gridline from being trimmed
      scale_y_continuous(limits = c(0, upper_lim), # y axis range: between 0 and upper_lim
                         expand = expansion(mult = c(.01, 0))) + # slightly expand below the data to match truncated graph, do not expand above the data
      my_theme() + # add custom theme created earlier
      force_panelsizes(rows = unit(3, "cm"), cols = unit(4, "cm")) # function from ggh4x, to set the aspect ratio of the plotting panel
    
    # create the truncated graph
    trunc_graph <- mydf %>%
      ggplot(aes(x = xlabs, # x-axis variable
                 y = mydata)) + # y-axis variable
      geom_col() + # for a bar chart
      labs(x = variable,
           y = NULL) + # x-axis label
      scale_y_continuous(expand = expansion(mult = c(.01, .05))) + # slightly expand below the data to prevent lowest gridline from being trimmed, use default expansion factor to expand above the data
      my_theme() + # add custom theme created earlier
      force_panelsizes(rows = unit(3, "cm"), cols = unit(4, "cm")) # function from ggh4x, to set the aspect ratio of the plotting panel
    
    # values need to be re-defined so that first condition in while loop can be checked again
    max_value <- max(mydata)
    trunc_breaks <- ggplot_build(trunc_graph)$layout$panel_params[[1]]$y$breaks
    trunc_max <- max(trunc_breaks[!is.na(trunc_breaks)])
    # these values are successfully passed outside the loop with a single assignment operator
    
    # Save the full graph
    full_graph %>%
      ggsave(filename = paste0("graphs/", item_type, item_no, "full.png"), # save inside the 'graphs' folder
             width = 6, # width value
             height = 5, # height value
             units = "cm", # units for width and height
             dpi = 600) # dots per inch
    
    # save the truncated graph
    trunc_graph %>%
      ggsave(filename = paste0("graphs/", item_type, item_no, "trunc.png"), # save inside the 'graphs' folder
             width = 6, # width value
             height = 5, # height value
             units = "cm", # units for width and height
             dpi = 600) # dots per inch

  }
  
  # add new parameters to the graph_data dataframe
  graph_data$seed_no[item_no] <<- seed_no 
  graph_data$max_value[item_no] <<- max_value
  graph_data$trunc_max[item_no] <<- trunc_max
  
  print(paste("Processing Item Number", item_no))
  
}

lapply(1:nrow(graph_data), function(i) make_plots(slice(graph_data, i)))


# generate lists
exp_order1 <- rep(c("full", "trunc"), length.out = 32) # ordering of conditions for list1
exp_order2 <- rep(c("trunc", "full"), length.out = 32) # ordering of conditions for list2
filler_order <- rep(c("full", "trunc"), length.out = 32) # ordering of conditions for fillers
AC_order <- rep(c("full", "trunc"), length.out = 6) # ordering of conditions for attention check items

# save list1
list1 <- graph_data %>%
  mutate(axis = c(exp_order1, filler_order, AC_order),
         denominator = ,
         img = paste0("graphs/", item_type, item_no, cond, ".png")) %>% # create 'img' column: filename for graph, based on item number and condition
  write_csv("list1.csv") # write this dataframe to a .csv file

# save list2
list2 <- graph_data %>%
  mutate(cond = c(exp_order2, filler_order, AC_order),
         img = paste0("graphs/", item_type, item_no, cond, ".png")) %>% # create 'img' column: filename for graph, based on item number and condition
  write_csv("list2.csv") # write this dataframe to a .csv file

# INSTRUCTIONS EXAMPLE GRAPH

dir.create('instructions')
set.seed(1)
example_data <- tibble(x = 1:5, y = round(rnorm(5, mean = 15, sd = 0.8)))

example_graph <- example_data %>%
  ggplot(aes(x = x,
             y = y)) +
  geom_col() + 
  labs(x = "Class",
       y = NULL) + 
  coord_cartesian(clip = "off") +
  scale_y_continuous(limits = c(0, 30),
                     expand = expansion(mult = c(.01, 0))) + 
  my_theme() +
  force_panelsizes(rows = unit(3, "cm"), cols = unit(4, "cm")) 

example_graph %>%
  ggsave(filename = paste0("instructions/example_graph.png"), # save inside the 'instructions' folder
         width = 6, # width value
         height = 5, # height value
         units = "cm", # units for width and height
         dpi = 600)


