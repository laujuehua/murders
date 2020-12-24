library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb,rate)) %>%
  ggplot(aes(abb,rate)) +
  geom_bar(width = 0.5, stat="identity", color="black") +
  coord_flip()
ggsave("figs/barplot.png")
#unix: mkdir figs
#saves a png file in the figs directory
#suggest making text file with R studio to describe what each file does and what it produces
