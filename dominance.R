# Basic dominance analysis

library(readxl)
library(dominanceanalysis)
data1 <- read_xlsx("C:/Users/glane/Downloads/Auton.xlsx")
data2 <- read_xlsx("C:/Users/glane/Downloads/Corrupt.xlsx")
data3 <- read_xlsx("C:/Users/glane/Downloads/SProt.xlsx")

lm.1<-lm(AutonCLT~.,data1)
lm.2 <-lm(Corrupt~.,data2)
lm.3 <-lm(SProtCLT~.,data3)

da1<-dominanceAnalysis(lm.1)
da2<-dominanceAnalysis(lm.2)
da3<-dominanceAnalysis(lm.3)

print(da1)
print(da2)
print(da3)

summary(da1)
summary(da2)
summary(da3)

#Auton
plot(da1,which.graph='complete')
plot(da1,which.graph='conditional')
plot(da1,which.graph='general')

#Corrupt
plot(da2,which.graph='complete')
plot(da2,which.graph='conditional')
plot(da2,which.graph='general')

#SProtCLT
plot(da3,which.graph='complete')
plot(da3,which.graph='conditional')
plot(da3,which.graph='general')