# 2.0 - criei a gambiarra nível  dois
# 2.1 - criei variável vacinado T/F não interessa tipo de vacina
rm(list=ls(all=TRUE))
gc(reset=TRUE,full=TRUE)
setwd('/home/tura/R-experimentos/SGL')
source('urls_csv.r')
source('arquivos.r')

# Gambiarra nível 1
urls <-paste('https://s3.sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/',urls,sep='')

for(i in 1:length(urls)){
	download.file(urls[i],arq[i])
}

# Gambiarra nível 2
# Limpando possiveis pŕoblemas nos arquivos 
# retiro "
# troco , por espaço


for (i in 1:length(arq)){
	cat(i)
	aux <- readLines(arq[i])
	cat('.')
	aux <- gsub('"','',aux)
	cat('.')
	aux <- gsub(',',' ',aux)
	cat('.')
	write.table(aux,arq[i], row.names = FALSE,col.names = F,sep='',quote=F)
}


# Gambiarra nível 3
#busca erros


linhas_erro <- numeric(length(urls))

correcao <- function (arquivo,erro){
	com_defeito <- readLines(arq[i]) 
	sem_erros <- com_defeito[-erro]
	write.table(sem_erros,arquivo, row.names = FALSE,col.names = F,sep='',quote=F)
}


require(tidyverse)


for (i in 1:length(urls)){
	base<- read_csv2(arq[i],col_types=cols(.default='c'),locale = locale(encoding = "latin1"))
	cat(i)
	defeitos  <- unique(problems(base)$row)
	cat('.')
	linhas_erro[i] <- length(defeitos)
	cat('.')
	if(length(defeitos)>0) correcao(arq[i],defeitos)
	cat('.\n')
	}



#
#  Segunda parte
#


rm(list=ls(all=TRUE))
gc(reset=TRUE,full=TRUE)
setwd('/home/tura/R-experimentos/SGL')
source('urls.r')
source('arq.r')


require(tidyverse)

ler <- function(base){
	aux <- read_csv2(base,col_types=cols(.default='c'))
	aux$evolucaoCaso[is.na(aux$evolucaoCaso)] <- 'Ignorado'
	aux <- subset(aux,evolucaoCaso != 'Cancelado')
	aux$evolucaoCaso[aux$evolucaoCaso=='Ignorado'] <- NA
	aux <- subset(aux,excluido != 'true')
	aux$excluido <- NULL
	aux$sexo <- substr(aux$sexo,1,1)
	aux$sexo[aux$sexo=='I'] <- NA
	aux$racaCor[aux$racaCor=='Ignorado'] <- NA
	aux$racaCor <- substr(aux$racaCor,1,1)
	aux <- subset(aux,substr(classificacaoFinal,1,4)=='Conf')
	gc(reset=TRUE,full=TRUE)
	aux$classificacaoFinal <- NULL
	aux$profissionalSaude <- NULL
	aux$cbo <- NULL
	aux$profissionalSeguranca <- NULL
	aux$origem <- NULL
	aux$validado <- NULL
	gc(reset=TRUE,full=TRUE)
	aux$vacinado <- NA
	aux$vacinado[aux$codigoRecebeuVacina==1] <- TRUE
	aux$vacinado[aux$codigoRecebeuVacina==2] <- FALSE
	aux$dataPrimeiraDose <- lubridate:::ymd(aux$dataPrimeiraDose)
	aux$dataSegundaDose <- lubridate:::ymd(aux$dataSegundaDose)
	aux$codigoRecebeuVacina <- NULL
	aux$codigoLaboratorioPrimeiraDose <- NULL
	aux$codigoLaboratorioSegundaDose <- NULL
	aux$lotePrimeiraDose <- NULL
	aux$loteSegundaDose  <- NULL	
	gc(reset=TRUE,full=TRUE)
	aux$codigoFabricanteTeste1  <- NULL
	aux$codigoFabricanteTeste2  <- NULL
	aux$codigoFabricanteTeste3  <- NULL
	aux$codigoFabricanteTeste4  <- NULL
	aux$dataColetaTeste1[is.na(aux$dataColetaTeste1)] <- aux$dataColetaTeste2[is.na(aux$dataColetaTeste1)]
	aux$dataColetaTeste2  <- NULL
	aux$dataColetaTeste1[is.na(aux$dataColetaTeste1)] <- aux$dataColetaTeste3[is.na(aux$dataColetaTeste1)]
	aux$dataColetaTeste3  <- NULL
	aux$dataColetaTeste1[is.na(aux$dataColetaTeste1)] <- aux$dataColetaTeste4[is.na(aux$dataColetaTeste1)]
	aux$dataColetaTeste4  <- NULL
	aux$codigoResultadoTeste2  <- NULL
	aux$codigoResultadoTeste3  <- NULL
	aux$codigoResultadoTeste4  <- NULL
	aux$codigoTipoTeste2  <- NULL
	aux$codigoTipoTeste3  <- NULL
	aux$codigoTipoTeste4  <- NULL
	aux$codigoEstadoTeste2 <- NULL
	aux$codigoEstadoTeste3 <- NULL
	aux$codigoEstadoTeste4 <- NULL
	gc(reset=TRUE,full=TRUE)
	aux$codigoTipoTeste1 <- NULL
	aux$codigoEstadoTeste1 <- NULL
	aux$UF <- aux$estadoNotificacaoIBGE
	aux$estadoNotificacaoIBGE <- NULL 
	aux$estadoNotificacao <- NULL
	aux$estado <- NULL
	aux$estadoIBGE <- NULL
	aux$municipio <- NULL
	aux$municipioIBGE <- NULL
	aux$municipioNotificacao <- NULL
	aux$municipioNotificacaoIBGE <- NULL
	gc(reset=TRUE,full=TRUE)
	aux
}

base_sgl <- map_dfr(arq,ler)
nrow(base_sgl)
#table(base_sgl$codigoLaboratorioPrimeiraDose)
#table(base_sgl$codigoLaboratorioSegundaDose)
save(base_sgl,file='/home/tura/R-experimentos/SGL/base_sgl.RData')


