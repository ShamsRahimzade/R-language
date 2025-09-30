setwd("C:\\Users\\rehim\\OneDrive\\Desktop\\R-Giris-Seviyesi-Egitimi-main")

#if,elseif,else
x<-c(1:20)
y<-c(21:49)
if (77 %in% x) {
  print("X activated")
} else if (27 %in% y) {
  print("y activated")
}else{print("non activated")}


#ifelse
library("readxl")
data_1<- read_xlsx("ad_cinsiyet_okulnu.xlsx")

data_1$color<- ifelse(data_1$Cinsiyet == "E", "mavi","Kirmizi")

#for

hello <- c()
for (i in 1:10) {
  hello <- c(hello,i)
}


#while

rhmzd <- c()

while (length(rhmzd)<10) {
  rhmzd<-c(rhmzd,"salam")
}
