library(readxl)
library(boot)
library(tsDyn)
library(vars)
library(repr)
library(writexl)

data = read_excel("filepath")
#View(data)

Date <- data$Date[-(1:2)]
FMFBAX <- diff(log(data$FMFBAX))[-1]
FMFBA <- diff(log(data$FMFBA))[-1]
FM0 <- diff(log(data$FM0))[-1]
FM1 <- diff(log(data$FM1))[-1]
FM2 <- diff(log(data$FM2))[-1]
FM2X <- diff(log(data$FM2X))[-1]
IMOEX <- diff(log(data$IMOEX))[-1]
RTSI <- diff(log(data$RTSI))[-1]
EXRUSD <- diff(log(data$EXRUSD))[-1]
EXREUR <- diff(log(data$EXREUR))[-1]
EXRGBP <- diff(log(data$EXRGBP))[-1]
EXRCNY <- diff(log(data$EXRCNY))[-1]
EXRYEN <- diff(log(data$EXRYEN))[-1]
FYFF <- diff(data$FYFF)[-1]
FYGM3 <- diff(data$FYGM3)[-1]
FYGM6 <- diff(data$FYGM6)[-1]
FYGT1 <- diff(data$FYGT1)[-1]
FYGT3 <- diff(data$FYGT3)[-1]
FYGT5 <- diff(diff(data$FYGT5))
FYGT10 <- diff(diff(data$FYGT10))
SFYGM3 <- diff(data$SFYGM3)[-1]
SFYGM6 <- diff(data$SFYGM6)[-1]
SFYGT1 <- diff(data$SFYGT1)[-1]
SFYGT3 <- diff(data$SFYGT3)[-1]
SFYGT5 <- diff(data$SFYGT5)[-1]
SFYGT10 <- diff(data$SFYGT10)[-1]
CREDYORS <- diff(data$CREDYORS)[-1]
CREDYORL <- diff(data$CREDYORL)[-1]
CREDYPOS <- diff(diff(data$CREDYPOS))
CREDYPOL <- diff(data$CREDYPOL)[-1]
DEPYORS <- diff(data$DEPYORS)[-1]
DEPYORL <- diff(data$DEPYORL)[-1]
DEPYPOS <- diff(data$DEPYPOS)[-1]
DEPYPOL <- diff(data$DEPYPOL)[-1]
RUONIA <- diff(data$RUONIA)[-1]
USFYGT1 <- diff(data$USFYGT1)[-1]
USFYGT10 <- diff(data$USFYGT10)[-1]
URALS <- diff(log(data$URALS))[-1]
GOLD <- diff(log(data$GOLD))[-1]
SILVER <- diff(log(data$SILVER))[-1]
PI <- data$PI[-(1:2)]
PUFOOD <- data$PUFOOD[-(1:2)]
PUNONFOOD <- data$PUNONFOOD[-(1:2)]
PUSERV <- diff(data$PUSERV)[-1]
PUUTIL <- data$PUUTIL[-(1:2)]
PUMED <- diff(data$PUMED)[-1]
PUAUTO <- data$PUAUTO[-(1:2)]
PWIND <- data$PWIND[-(1:2)]
PWRES <- data$PWRES[-(1:2)]
PWMAN <- data$PWMAN[-(1:2)]
PWENERG <- data$PWENERG[-(1:2)]
AGRICULT <- diff(log(data$AGRICULT))[-1]
BUILD <- diff(log(data$BUILD))[-1]
TRANSPORTFR <- diff(log(data$TRANSPORTFR))[-1]
TRANSPORTPASS <- data$TRANSPORTPASS[-(1:2)]
WHOLESALES <- diff(log(data$WHOLESALES))[-1]
IND <- diff(log(data$IND))[-1]
INDRES <- data$INDRES[-(1:2)]
INDCOAL <- data$INDCOAL[-(1:2)]
INDMETALRUD <- data$INDMETALRUD[-(1:2)]
INDOTHERRES <- data$INDOTHERRES[-(1:2)]
INDMAN <- data$INDMAN[-(1:2)]
INDFOOD <- data$INDFOOD[-(1:2)]
INDDRINK <- diff(data$INDDRINK)[-1]
INDTOB <- data$INDTOB[-(1:2)]
INDTEXT <- data$INDTEXT[-(1:2)]
INDCLOTH <- data$INDCLOTH[-(1:2)]
INDLEATH <- data$INDLEATH[-(1:2)]
INDSHOES <- data$INDSHOES[-(1:2)]
INDWOOD <- data$INDWOOD[-(1:2)]
INDPAPER <- data$INDPAPER[-(1:2)]
INDOIL <- data$INDOIL[-(1:2)]
INDCHEM <- data$INDCHEM[-(1:2)]
INDMED <- data$INDMED[-(1:2)]
INDRUBBER <- data$INDRUBBER[-(1:2)]
INDMINER <- data$INDMINER[-(1:2)]
INDMETAL <- data$INDMETAL[-(1:2)]
INDHARDWARE <- data$INDHARDWARE[-(1:2)]
INDCOMP <- data$INDCOMP[-(1:2)]
INDELECTR <- data$INDELECTR[-(1:2)]
INDMACH <- data$INDMACH[-(1:2)]
INDAUTO <- data$INDAUTO[-(1:2)]
INDFURN <- data$INDFURN[-(1:2)]
INDENERG <- data$INDENERG[-(1:2)]
INDWATER <- data$INDWATER[-(1:2)]
CORR <- diff(log(data$CORR))[-1]
INTRES <- diff(log(data$INTRES))[-1]
CLFINH <- diff(log(data$CLFINH))[-1]
CLONFH <- diff(diff(data$CLONFH))
CLPOPH <- diff(log(data$CLPOPH))[-1]
CRFGA <- diff(data$CRFGA)[-1]
CLFINF <- diff(log(data$CLFINF))[-1]
CLONFF <- diff(log(data$CLONFF))[-1]
CLPOPF <- diff(log(data$CLPOPF))[-1]
BRTOCI <- diff(log(data$BRTOCI))[-1]
CITOBR <- diff(log(data$CITOBR))[-1]
NOMWAGE <- diff(diff(data$INTRES))
WAGEOUT <- diff(log(data$WAGEOUT))[-1]
WRKRSOUT <- diff(log(data$WRKRSOUT))[-1]
EXPORT <- diff(log(data$EXPORT))[-1]



data <- data.frame(
  Date,
  FMFBAX,
  FMFBA,
  FM0,
  FM1,
  FM2,
  FM2X,
  IMOEX,
  RTSI,
  EXRUSD,
  EXREUR,
  EXRGBP,
  EXRCNY,
  EXRYEN,
  FYFF,
  FYGM3,
  FYGM6,
  FYGT1,
  FYGT3,
  FYGT5,
  FYGT10,
  SFYGM3,
  SFYGM6,
  SFYGT1,
  SFYGT3,
  SFYGT5,
  SFYGT10,
  CREDYORS,
  CREDYORL,
  CREDYPOS,
  CREDYPOL,
  DEPYORS,
  DEPYORL,
  DEPYPOS,
  DEPYPOL,
  RUONIA,
  USFYGT1,
  USFYGT10,
  URALS,
  GOLD,
  SILVER,
  PI,
  PUFOOD,
  PUNONFOOD,
  PUSERV,
  PUUTIL,
  PUMED,
  PUAUTO,
  PWIND,
  PWRES,
  PWMAN,
  PWENERG,
  AGRICULT,
  BUILD,
  TRANSPORTFR,
  TRANSPORTPASS,
  WHOLESALES,
  IND,
  INDRES,
  INDCOAL,
  INDMETALRUD,
  INDOTHERRES,
  INDMAN,
  INDFOOD,
  INDDRINK,
  INDTOB,
  INDTEXT,
  INDCLOTH,
  INDLEATH,
  INDSHOES,
  INDWOOD,
  INDPAPER,
  INDOIL,
  INDCHEM,
  INDMED,
  INDRUBBER,
  INDMINER,
  INDMETAL,
  INDHARDWARE,
  INDCOMP,
  INDELECTR,
  INDMACH,
  INDAUTO,
  INDFURN,
  INDENERG,
  INDWATER,
  CORR,
  INTRES,
  CLFINH,
  CLONFH,
  CLPOPH,
  CRFGA,
  CLFINF,
  CLONFF,
  CLPOPF,
  BRTOCI,
  CITOBR,
  NOMWAGE,
  WAGEOUT,
  WRKRSOUT,
  EXPORT
)
#View(data)
# Стандартизируем данные.
data_s = scale(data[,2:101], center = TRUE, scale = TRUE)
#View(data_s)

F_num <- 4
num_lags <- 4
pc_all = prcomp(data_s, center=FALSE, scale.=FALSE, rank. = F_num) 
# summary(pc_all)
C = pc_all$x
#View(C)

# Slow Variables
slow_vars = c("AGRICULT", "BUILD", "TRANSPORTFR", "TRANSPORTPASS", "WHOLESALES", "IND", "INDRES",
              "INDCOAL", "INDMETALRUD", "INDOTHERRES", "INDMAN", "INDFOOD", "INDDRINK", "INDTOB",
              "INDTEXT", "INDCLOTH", "INDLEATH", "INDSHOES", "INDWOOD", "INDPAPER", "INDOIL",
              "INDCHEM", "INDMED", "INDRUBBER", "INDMINER", "INDMETAL", "INDHARDWARE", "INDCOMP",
              "INDELECTR", "INDMACH", "INDAUTO", "INDFURN", "INDENERG", "INDWATER", "PI", "PUFOOD",
              "PUNONFOOD", "PUSERV", "PUUTIL", "PUMED", "PUAUTO", "PWIND", "PWRES", "PWMAN", "PWENERG",
              "NOMWAGE", "WAGEOUT", "WRKRSOUT", "EXPORT")

data_slow = data_s[, slow_vars]
pc_slow = prcomp(data_slow, center=FALSE, scale.=FALSE, rank. = F_num)
F_slow = pc_slow$x
#View(F_slow)

# Очищаем главные компоненты от наблюдаемых переменных
reg = lm(C ~ F_slow + data_s[,"FYFF"])
#summary(reg)
F_hat = C - data.matrix(data_s[,"FYFF"])%*%reg$coefficients[(F_num + 2),]

data_var = data.frame(F_hat, "FYFF" = data_s[,"FYFF"])
#View(data_var)
#write_xlsx(data_var, "data_var.xlsx")

var = VAR(data_var, p = num_lags)
# summary(var)
nsteps = 20
irf_point = irf(var, n.ahead = (nsteps - 1), impulse = "FYFF", response = "FYFF", boot = FALSE)




reg_loadings = lm(data_s ~ 0 + F_hat + data_s[,"FYFF"])
loadings = reg_loadings$coefficients
#head(reg_loadings$coefficients)
#summary(reg_loadings)

#Бутстрап

R = 1000 # Число симуляций
nvars = 100 # Число переменных

IRFs = array(c(0,0,0), dim = c(nsteps,nvars,R))

var = lineVar(data_var, lag = num_lags, include = "const")
#summary(var)
for(j in 1:R){    
  data_boot = VAR.boot(var, boot.scheme ="resample")
  var_boot = VAR(data_boot, lag = num_lags)
  irf1 = irf(var_boot, n.ahead = (nsteps - 1), impulse = "FYFF", boot = FALSE)
  for(i in 1:nvars){
    IRFs[,i,j] = (irf1$irf$FYFF %*% matrix(loadings[1:(F_num + 1), i]))
  }
}

# Выделяем квантили
Upper = array(c(0,0), dim = c(nsteps, nvars))
for(k in 1:nsteps){
  for(i in 1:nvars){
    Upper[k,i] = quantile(IRFs[k,i,], probs = c(0.95))[1]
  }
}
Lower = array(c(0,0), dim = c(nsteps, nvars))
for(k in 1:nsteps){
  for(i in 1:nvars){
    Lower[k,i] = quantile(IRFs[k,i,], probs = c(0.05))[1]
  }
}
IRF = array(c(0,0), dim = c(nsteps, nvars))
for(k in 1:nsteps){
  for(i in 1:nvars){
    IRF[k,i] = quantile(IRFs[k,i,], probs = c(0.5))[1]
  }
}
rm(var_boot)
rm(IRFs)


variables = c(grep("^FYFF$", colnames(data_s)), grep("^PI$", colnames(data_s)), grep("^IND$", colnames(data_s)),
              grep("^FM2$", colnames(data_s))
)

transf_code = c(1, 1, 1,
                1 
)

variable_names = c("Ключевая ставка", "Индекс цен", "Промышленное производство",
                   "M2"
)


options(repr.plot.width=12, repr.plot.height=8)

par(mfrow=c(2,3), 
    mar = c(1, 1, 1, 1))

for(i in variables){
  index = which(variables == i)
  if(transf_code[index] == 5){
    plot(cumsum(IRF[,i]), type ='l',lwd=2, main = variable_names[index],
         ylab= "", xlab="Steps", ylim=range(cumsum(Lower[,i]),cumsum(Upper[,i])),
         cex.main=1.8, cex.axis=1.3)
    lines(cumsum(Upper[,i]), lty=2, col="red")
    lines(cumsum(Lower[,i]), lty=2, col="red")
    abline(h=0)
  }
  else{
    plot(IRF[,i], type ='l',lwd=2, main = variable_names[index],
         ylab= "", xlab="Steps", ylim=range((Lower[,i]),(Upper[,i])),
         cex.main=1.8, cex.axis=1.3)
    lines((Upper[,i]), lty=2, col="red")
    lines((Lower[,i]), lty=2, col="red")
    abline(h=0)  
  }
}


#Дальше идёт код для переноса IRF и доверительных интервалов в файл excel.
#На основе этого файла я строил графики, но уже в matlab

df_all <- data.frame(step = 1:nsteps)

for (k in 1:length(variables)) {
  i <- variables[k]
  name <- variable_names[k]
  
  df_all[[paste0(name, "_irf")]]   <- IRF[, i]
  df_all[[paste0(name, "_lower")]] <- Lower[, i]
  df_all[[paste0(name, "_upper")]] <- Upper[, i]
}

write_xlsx(df_all, "IRF_all1.xlsx")

