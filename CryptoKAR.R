Crypto<-read.csv("crypto-markets.csv")
names(Crypto)


Crypto$date <- as.Date(Crypto$date)
intervalle <- with(Crypto, Crypto[(date >= "2016-01-01" & date < "2017-12-31"), ])
intervalle2018 <- with(Crypto, Crypto[(date >= "2017-12-31" & date < "2018-12-31"), ])



BTC = which(intervalle$symbol=='BTC')

BTC2 = which(intervalle2018$symbol=='BTC')

x<- intervalle$date[BTC]


y <- intervalle$low[BTC]
mean(y)
y2 <- intervalle$low[BTC2]
mean(y2)


z<-intervalle$high[BTC]
mean(z)
z2<-intervalle2018$high[BTC2]
mean(z2)


w <- intervalle$volume[BTC]
mean(w)
w2 <- intervalle2018$volume[BTC2]
mean(w2)

##reg_lin <- lm(y~x)
##cor(y,x)

plot(x,y,xlab='année',ylab='low',pch ='x',col='blue',main = 'cours minimal du btc')
dev.new()
plot(x,z,xlab='année',ylab='high',pch ='x',col='blue',main = 'cours max du btc')

dev.new()

plot(x,w,xlab='année',ylab='volume',pch ='x',col='blue',main = 'volume des transferts en btc')

volumetot <- sum(intervalle$volume)
volumetot
volumebtcglobalenpourcent <- (sum(w)*100) / (volumetot)
volumebtcglobalenpourcent



CryptoData <- Crypto[Crypto$symbol != 'BTC',]


