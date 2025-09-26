library(readxl)
setwd("C:\\Users\\rehim\\OneDrive\\Desktop\\R-Giris-Seviyesi-Egitimi-main")

human<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
hobby<-read_xlsx("hobi_fobi_yemek.xlsx")
names(human)
merged_file<-merge(human,hobby,by.x ="Ad-Soyad",by.y ="Ad-Soyad")
cbind_data<-cbind(human[2],hobby[4])
cbind_data2<-cbind(human$Cinsiyet,hobby$Yemek)
names(cbind_data2)<-c("Gender","Food")

