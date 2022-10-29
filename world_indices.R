if (!require("quantmod"))         install.packages("quantmod") # cotações das ações e do Ibov
if (!require("Quandl"))           install.packages("Quandl")  # 
###--------------------------------------------------------------------------###


########################################################
# Indices utilizados com os códigos
########################################################

#Ibovespa:  ^BVSP
#S&P:       ^GSPC
#DOW JONES: ^DJI
#NASDAQ:    ^IXIC 
#FTSE 100:  ^FTSE
#CAC 40:    ^FCHI
#DAX:       ^GDAXI
#NIKKEI:    ^N225
#SHANGHAI:  000001.SS

#USD/BRL:   USDBRL=X
#DXY:       DX-Y.NYB
########################################################

###--------------------------------------------------------------------------###

########################################################
# Colocando data desejada para semana
########################################################
data_ini_week  <- "2022-10-21"   #Colocar o dia da sexta-feira da semana anterior
data_ini_month <- "2022-09-30"   #Colocar o ultimo dia do mes anterior com negociacao
data_ini_year  <- "2021-12-30"   #Colocar o ultimo dia do ano anterior com negociacao
data_fim       <- "2022-10-29"   #Fechamento da semana atual (colocar a data de sabado)


###--------------------------------------------------------------------------###

########################################################
# Criando tabela com as cotacoes
########################################################

dados = data.frame(0,0,0,0,0) 
colnames(dados)[1] <- "Indice"
colnames(dados)[2] <- "% Semana"
colnames(dados)[3] <- "% Mes"
colnames(dados)[4] <- "% Ano"
colnames(dados)[5] <- "Cotacao"

########################################################

###--------------------------------------------------------------------------###

################################################
# Ibovespa
################################################

ibovespa_week  <- as.data.frame(quantmod::getSymbols("^BVSP", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
ibovespa_month <- as.data.frame(quantmod::getSymbols("^BVSP", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
ibovespa_year  <- as.data.frame(quantmod::getSymbols("^BVSP", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
ibovespa_price <- as.data.frame(quantmod::getSymbols("^BVSP", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

ibovespa <- NULL
ibovespa <- as.data.frame(ibovespa)
ibovespa_W <- ((ibovespa_week[nrow(ibovespa_week),4]-ibovespa_week[1,4])/ibovespa_week[1,4])
ibovespa_m <- ((ibovespa_month[nrow(ibovespa_month),4]-ibovespa_month[1,4])/ibovespa_month[1,4])
ibovespa_y <- ((ibovespa_year[nrow(ibovespa_year),4]-ibovespa_year[1,4])/ibovespa_year[1,4])
ibovespa_p <- ((ibovespa_price[nrow(ibovespa_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[1,1] <- "ibovespa"
dados[1,2] <-  ibovespa_W*100
dados[1,3] <-  ibovespa_m*100
dados[1,4] <-  ibovespa_y*100
dados[1,5] <-  ibovespa_p


###--------------------------------------------------------------------------###

################################################
# SeP 500
################################################
sep_500_week  <- as.data.frame(quantmod::getSymbols("^GSPC", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
sep_500_month <- as.data.frame(quantmod::getSymbols("^GSPC", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
sep_500_year  <- as.data.frame(quantmod::getSymbols("^GSPC", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
sep_500_price <- as.data.frame(quantmod::getSymbols("^GSPC", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

sep_500 <- NULL
sep_500 <- as.data.frame(sep_500)
sep_500_W <- ((sep_500_week[nrow(sep_500_week),4]-sep_500_week[1,4])/sep_500_week[1,4])
sep_500_m <- ((sep_500_month[nrow(sep_500_month),4]-sep_500_month[1,4])/sep_500_month[1,4])
sep_500_y <- ((sep_500_year[nrow(sep_500_year),4]-sep_500_year[1,4])/sep_500_year[1,4])
sep_500_p <- ((sep_500_price[nrow(sep_500_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[2,1] <- "sep_500"
dados[2,2] <-  sep_500_W*100
dados[2,3] <-  sep_500_m*100
dados[2,4] <-  sep_500_y*100
dados[2,5] <-  sep_500_p


###--------------------------------------------------------------------------###

################################################
# Dow Jones
################################################

dji_week  <- as.data.frame(quantmod::getSymbols("^DJI", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
dji_month <- as.data.frame(quantmod::getSymbols("^DJI", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
dji_year  <- as.data.frame(quantmod::getSymbols("^DJI", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
dji_price <- as.data.frame(quantmod::getSymbols("^DJI", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

dji <- NULL
dji <- as.data.frame(dji)
dji_W <- ((dji_week[nrow(dji_week),4]-dji_week[1,4])/dji_week[1,4])
dji_m <- ((dji_month[nrow(dji_month),4]-dji_month[1,4])/dji_month[1,4])
dji_y <- ((dji_year[nrow(dji_year),4]-dji_year[1,4])/dji_year[1,4])
dji_p <- ((dji_price[nrow(dji_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[3,1] <- "dji"
dados[3,2] <-  dji_W*100
dados[3,3] <-  dji_m*100
dados[3,4] <-  dji_y*100
dados[3,5] <-  dji_p

###--------------------------------------------------------------------------###



###--------------------------------------------------------------------------###

################################################
# Nasdaq
################################################

nasdaq_week  <- as.data.frame(quantmod::getSymbols("^IXIC", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
nasdaq_month <- as.data.frame(quantmod::getSymbols("^IXIC", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
nasdaq_year  <- as.data.frame(quantmod::getSymbols("^IXIC", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
nasdaq_price <- as.data.frame(quantmod::getSymbols("^IXIC", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

nasdaq <- NULL
nasdaq <- as.data.frame(nasdaq)
nasdaq_W <- ((nasdaq_week[nrow(nasdaq_week),4]-nasdaq_week[1,4])/nasdaq_week[1,4])
nasdaq_m <- ((nasdaq_month[nrow(nasdaq_month),4]-nasdaq_month[1,4])/nasdaq_month[1,4])
nasdaq_y <- ((nasdaq_year[nrow(nasdaq_year),4]-nasdaq_year[1,4])/nasdaq_year[1,4])
nasdaq_p <- ((nasdaq_price[nrow(nasdaq_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[4,1] <- "nasdaq"
dados[4,2] <-  nasdaq_W*100
dados[4,3] <-  nasdaq_m*100
dados[4,4] <-  nasdaq_y*100
dados[4,5] <-  nasdaq_p

###--------------------------------------------------------------------------###

###--------------------------------------------------------------------------###

################################################
# FTSE 100
################################################

ftse_100_week  <- as.data.frame(quantmod::getSymbols("^FTSE", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
ftse_100_month <- as.data.frame(quantmod::getSymbols("^FTSE", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
ftse_100_year  <- as.data.frame(quantmod::getSymbols("^FTSE", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
ftse_100_price <- as.data.frame(quantmod::getSymbols("^FTSE", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

ftse_100 <- NULL
ftse_100 <- as.data.frame(ftse_100)
ftse_100_W <- ((ftse_100_week[nrow(ftse_100_week),4]-ftse_100_week[1,4])/ftse_100_week[1,4])
ftse_100_m <- ((ftse_100_month[nrow(ftse_100_month),4]-ftse_100_month[1,4])/ftse_100_month[1,4])
ftse_100_y <- ((ftse_100_year[nrow(ftse_100_year),4]-ftse_100_year[1,4])/ftse_100_year[1,4])
ftse_100_p <- ((ftse_100_price[nrow(ftse_100_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[5,1] <- "ftse_100"
dados[5,2] <-  ftse_100_W*100
dados[5,3] <-  ftse_100_m*100
dados[5,4] <-  ftse_100_y*100
dados[5,5] <-  ftse_100_p

###--------------------------------------------------------------------------###


###--------------------------------------------------------------------------###

################################################
# CAC 40
################################################

cac_40_week  <- as.data.frame(quantmod::getSymbols("^FCHI", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
cac_40_month <- as.data.frame(quantmod::getSymbols("^FCHI", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
cac_40_year  <- as.data.frame(quantmod::getSymbols("^FCHI", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
cac_40_price <- as.data.frame(quantmod::getSymbols("^FCHI", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

cac_40 <- NULL
cac_40 <- as.data.frame(cac_40)
cac_40_W <- ((cac_40_week[nrow(cac_40_week),4]-cac_40_week[1,4])/cac_40_week[1,4])
cac_40_m <- ((cac_40_month[nrow(cac_40_month),4]-cac_40_month[1,4])/cac_40_month[1,4])
cac_40_y <- ((cac_40_year[nrow(cac_40_year),4]-cac_40_year[1,4])/cac_40_year[1,4])
cac_40_p <- ((cac_40_price[nrow(cac_40_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[6,1] <- "cac_40"
dados[6,2] <-  cac_40_W*100
dados[6,3] <-  cac_40_m*100
dados[6,4] <-  cac_40_y*100
dados[6,5] <-  cac_40_p


###--------------------------------------------------------------------------###


###--------------------------------------------------------------------------###

################################################
# DAX
################################################

dax_week  <- as.data.frame(quantmod::getSymbols("^GDAXI", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
dax_month <- as.data.frame(quantmod::getSymbols("^GDAXI", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
dax_year  <- as.data.frame(quantmod::getSymbols("^GDAXI", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
dax_price <- as.data.frame(quantmod::getSymbols("^GDAXI", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

dax <- NULL
dax <- as.data.frame(dax)
dax_W <- ((dax_week[nrow(dax_week),4]-dax_week[1,4])/dax_week[1,4])
dax_m <- ((dax_month[nrow(dax_month),4]-dax_month[1,4])/dax_month[1,4])
dax_y <- ((dax_year[nrow(dax_year),4]-dax_year[1,4])/dax_year[1,4])
dax_p <- ((dax_price[nrow(dax_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[7,1] <- "dax"
dados[7,2] <-  dax_W*100
dados[7,3] <-  dax_m*100
dados[7,4] <-  dax_y*100
dados[7,5] <-  dax_p

###--------------------------------------------------------------------------###


###--------------------------------------------------------------------------###

################################################
# NIKKEI
################################################

nikkei_week  <- as.data.frame(quantmod::getSymbols("^N225", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
nikkei_month <- as.data.frame(quantmod::getSymbols("^N225", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
nikkei_year  <- as.data.frame(quantmod::getSymbols("^N225", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
nikkei_price <- as.data.frame(quantmod::getSymbols("^N225", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

nikkei <- NULL
nikkei <- as.data.frame(nikkei)
nikkei_W <- ((nikkei_week[nrow(nikkei_week),4]-nikkei_week[1,4])/nikkei_week[1,4])
nikkei_m <- ((nikkei_month[nrow(nikkei_month),4]-nikkei_month[1,4])/nikkei_month[1,4])
nikkei_y <- ((nikkei_year[nrow(nikkei_year),4]-nikkei_year[1,4])/nikkei_year[1,4])
nikkei_p <- ((nikkei_price[nrow(nikkei_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[8,1] <- "nikkei"
dados[8,2] <-  nikkei_W*100
dados[8,3] <-  nikkei_m*100
dados[8,4] <-  nikkei_y*100
dados[8,5] <-  nikkei_p

###--------------------------------------------------------------------------###


###--------------------------------------------------------------------------###

################################################
# Shanghai
################################################

shangai_week  <- as.data.frame(quantmod::getSymbols("000001.SS", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
shangai_month <- as.data.frame(quantmod::getSymbols("000001.SS", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
shangai_year  <- as.data.frame(quantmod::getSymbols("000001.SS", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
shangai_price <- as.data.frame(quantmod::getSymbols("000001.SS", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

shangai <- NULL
shangai <- as.data.frame(shangai)
shangai_W <- ((shangai_week[nrow(shangai_week),4]-shangai_week[1,4])/shangai_week[1,4])
shangai_m <- ((shangai_month[nrow(shangai_month),4]-shangai_month[1,4])/shangai_month[1,4])
shangai_y <- ((shangai_year[nrow(shangai_year),4]-shangai_year[1,4])/shangai_year[1,4])
shangai_p <- ((shangai_price[nrow(shangai_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[9,1]  <- "shangai"
dados[9,2] <-  shangai_W*100
dados[9,3] <-  shangai_m*100
dados[9,4] <-  shangai_y*100
dados[9,5] <-  shangai_p

###--------------------------------------------------------------------------###


###--------------------------------------------------------------------------###

################################################
# USD/BRL
################################################

usd_brl_week  <- as.data.frame(quantmod::getSymbols("USDBRL=X", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
usd_brl_month <- as.data.frame(quantmod::getSymbols("USDBRL=X", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
usd_brl_year  <- as.data.frame(quantmod::getSymbols("USDBRL=X", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
usd_brl_price <- as.data.frame(quantmod::getSymbols("USDBRL=X", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

usd_brl <- NULL
usd_brl <- as.data.frame(usd_brl)
usd_brl_W <- ((usd_brl_week[nrow(usd_brl_week),4]-usd_brl_week[1,4])/usd_brl_week[1,4])
usd_brl_m <- ((usd_brl_month[nrow(usd_brl_month),4]-usd_brl_month[1,4])/usd_brl_month[1,4])
usd_brl_y <- ((usd_brl_year[nrow(usd_brl_year),4]-usd_brl_year[1,4])/usd_brl_year[1,4])
usd_brl_p <- ((usd_brl_price[nrow(usd_brl_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[10,1]  <- "usd_brl"
dados[10,2] <-  usd_brl_W*100
dados[10,3] <-  usd_brl_m*100
dados[10,4] <-  usd_brl_y*100
dados[10,5] <-  usd_brl_p


###--------------------------------------------------------------------------###


###--------------------------------------------------------------------------###

################################################
# DXY
################################################

dxy_week  <- as.data.frame(quantmod::getSymbols("DX-Y.NYB", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))
dxy_month <- as.data.frame(quantmod::getSymbols("DX-Y.NYB", src = "yahoo", auto.assign = FALSE, from = data_ini_month, to = data_fim))  
dxy_year  <- as.data.frame(quantmod::getSymbols("DX-Y.NYB", src = "yahoo", auto.assign = FALSE, from = data_ini_year, to = data_fim)) 
dxy_price <- as.data.frame(quantmod::getSymbols("DX-Y.NYB", src = "yahoo", auto.assign = FALSE, from = data_ini_week, to = data_fim))  

dxy <- NULL
dxy <- as.data.frame(dxy)
dxy_W <- ((dxy_week[nrow(dxy_week),4]-dxy_week[1,4])/dxy_week[1,4])
dxy_m <- ((dxy_month[nrow(dxy_month),4]-dxy_month[1,4])/dxy_month[1,4])
dxy_y <- ((dxy_year[nrow(dxy_year),4]-dxy_year[1,4])/dxy_year[1,4])
dxy_p <- ((dxy_price[nrow(dxy_price),4]))


################################################
# Adicionando os valores na tabela dados
################################################

dados[11,1]  <- "dxy"
dados[11,2] <-  dxy_W*100
dados[11,3] <-  dxy_m*100
dados[11,4] <-  dxy_y*100
dados[11,5] <-  dxy_p

###--------------------------------------------------------------------------###


dados
