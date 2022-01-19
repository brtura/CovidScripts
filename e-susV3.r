
rm(list=ls(all=TRUE))
gc(reset=TRUE,full=TRUE)
setwd('/home/tura/Downloads/e-sus3')
source('urls_csv.r')
source('arquivos.r')

for(i in 1:length(urls_csv)){
	download.file(urls_csv[i],arquivos[i])
}



correcao <- function (arquivo,erro){
	com_defeito <-  readLines(arquivo)
	sem_erros <- com_defeito[-erro]
	write.csv(sem_erros,arquivo, row.names = FALSE)
}


require(tidyverse)
for (i in 1:length(urls_csv)){
	base<- read_csv(arquivos[i], locale = locale(encoding = "latin1"))
	defeitos  <- problems(base)$row+1
	if(length(defeitos)>0) correcao(arquivos[i],defeitos)
}




ler <- function(base){
	aux <- read_csv(base, locale = locale(encoding = "latin1"))
	aux <- subset(aux,evolucaoCaso != 'Cancelado')
	aux <- subset(aux,evolucaoCaso != 'Ignorado')
	aux <- subset(aux,substr(classificacaoFinal,1,4)=='Conf')
	gc(reset=TRUE,full=TRUE)
	aux
}

base_esus <- map_dfr(arquivos,ler)

