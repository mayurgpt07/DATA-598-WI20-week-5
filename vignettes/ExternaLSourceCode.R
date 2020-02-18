
#----starwars-plot
starwars %>% 
  filter(species == "Human") %>%
  ggplot() +
  aes(x=mass,
      y=height) +
  geom_point() + 
  stat_summary(fun.data=mean_cl_normal) + 
  geom_smooth(method='lm', formula= y~x)


#----starwars-tbl
starwars %>% 
  filter(species == "Human" | species == "Droid") %>%
  select(name,
         species,
         height,
         mass,
         homeworld) %>%
  knitr::kable()
