rm(list=ls(all=TRUE))
gc(reset=TRUE,full=TRUE)
options(scipen=999)
require(tidyverse)
require(lubridate)

 base <- read.csv('https://github.com/owid/covid-19-data/raw/master/public/data/owid-covid-data.csv')

base4 <- base %>%
	filter(iso_code=='BRA') %>%
	select(date,new_deaths_smoothed_per_million,people_fully_vaccinated_per_hundred) %>%
	mutate(date = ymd(date)) %>%
	mutate(semana = epiweek(date),ano = epiyear(date)) %>%
	mutate(semana = ifelse(nchar(semana)==1,paste(0,semana,sep=''),semana)) %>%
	mutate(epi_sem = paste(ano,semana,sep='-')) %>%
	mutate(people_fully_vaccinated_per_hundred = ifelse(ano == 2020, 0,people_fully_vaccinated_per_hundred)) %>%
	select(epi_sem,new_deaths_smoothed_per_million,people_fully_vaccinated_per_hundred) %>%
	group_by(epi_sem) %>%
	fill(people_fully_vaccinated_per_hundred) %>%
	summarise(mortes = sum(new_deaths_smoothed_per_million,na.rm=T),
	imunizados = max(people_fully_vaccinated_per_hundred)) %>%
	fill(imunizados) %>%
	pivot_longer(-epi_sem)

ggplot(base4)+geom_line(aes(x=epi_sem,y=value,group=name,colour=name))+
	scale_y_continuous("Mortes por milhão", sec.axis = sec_axis(~ ./1, name = '%da pop Imunizada'))+
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
ggsave('mort_vac.png')

