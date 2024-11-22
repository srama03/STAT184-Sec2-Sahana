#load required libraries
library(ggplot2)
library(dplyr)
#compute statistics
diamonds %>%
  group_by(cut) %>%
  summarise(
    count= n(), #count of diamonds per cut
    #apply statistical functions across x, y, and z dimensions
    across(
      c(x, y, z),
      list(
        min= ~min(.),
        q1= ~quantile(., 0.25),
        median= ~median(.),
        q3= ~quantile(., 0.75),
        max= ~max(.),
        mad= ~mad(.),
        mean= ~mean(.),
        sd= ~sd(.)
      ),
      .names="{.col}_{.fn}"
    )
  )