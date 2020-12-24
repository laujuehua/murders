library(tidyverse)
murders <- read_csv("data/murders.csv")
murders <- murders %>%
  mutate(region = factor(region), rate=total/population *10^5)
save(murders, file = "rda/murders.rda")
#save command saves objects in what is called an "rda file" , or R data file
#.rda or .RData
