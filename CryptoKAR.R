


Crypto<-read.csv("crypto-markets.csv")
names(Crypto)


Crypto$date <- as.Date(Crypto$date)
intervalle <- with(Crypto, Crypto[(date >= "2016-01-01" & date < "2017-12-31"), ])


BTC = which(intervalle$symbol=='BTC')

x<- intervalle$date[BTC]

y <- intervalle$low[BTC]

z<-intervalle$high[BTC]

w <- intervalle$volume[BTC]


plot(x,y,xlab='année',ylab='low',pch ='x',col='blue',main = 'cours minimal du btc')
dev.new()
plot(x,z,xlab='année',ylab='high',pch ='x',col='blue',main = 'cours max du btc')

dev.new()

plot(x,w,xlab='année',ylab='volume',pch ='x',col='blue',main = 'volume des transferts en btc')

volumetot <- sum(intervalle$volume)
volumetot
volumebtcglobalenpourcent <- (sum(w)*100) / (volumetot)
volumebtcglobalenpourcent







