com1 <- c(5,2,3,6,5,5,3,4)
com2 <- c(3,3,3,10,3,3,3,3)
com3 <- c(84,1,5,7,6,7,1,5)
try <- c("a","b","c","d","e","f","g","h")

plot(com1,type = "o", xlab="Algorithms", col="red",
     ylab = "No. of communities", main="Karate Club Network")

plot(com2,type = "o", xlab="Algorithms", col="blue",
     ylab = "No. of communities", main="LFR Network")

plot(com3,type = "o", xlab="Algorithms", col="green",
     ylab = "No. of communities", main="Random Network")

plot(com1,type = "o", xlab="Algorithms", col="red",
     ylab = "No. of communities", main="Comparision of no. of communities", ylim = c(0, 10))

lines(com2, type = "o", col = "blue")
lines(com3, type = "o", col = "green")

mod3 <- c(0.079879,0,0.028242,0.244869,0.190559,0.2194065,0,0.2007015)
mod2 <- c(0.5509484,0.5509484,0.4580778,0.1489547,0.5509484,0.5509484,0.5509484,0.5509484)
mod1 <- c(0.4012985,0.3714661,0.3806706,0.4063116,0.3532216,0.4188034,0.4020381,0.3934089)

plot(mod1,type = "o", xlab="Algorithms", col="red",
     ylab = "Modularity Score", main="Karate Club Network")

plot(mod2,type = "o", xlab="Algorithms", col="blue",
     ylab = "Modularity Score", main="LFR Network")

plot(mod3,type = "o", xlab="Algorithms", col="green",
     ylab = "Modularity Score", main="Random Network")

plot(mod1,type = "o", xlab="Algorithms", col="red",
     ylab = "Modularity Score", main="Comparision of Modularity Scores", ylim = c(0, 0.6000000))

lines(mod2, type = "o", col = "blue")
lines(mod3, type = "o", col = "green")