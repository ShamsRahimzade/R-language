library(readxl)
setwd("C:\\Users\\rehim\\OneDrive\\Desktop\\R-Giris-Seviyesi-Egitimi-main")

human<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
hobby<-read_xlsx("hobi_fobi_yemek.xlsx")
names(human)
merged_file<-merge(human,hobby,by.x ="Ad-Soyad",by.y ="Ad-Soyad")
cbind_data<-cbind(human[2],hobby[4])
cbind_data2<-cbind(human$Cinsiyet,hobby$Yemek)
names(cbind_data2)<-c("Gender","Food")

rbind_data<-rbind(human$`Ad-Soyad`,hobby$Fobi)
rbind_data2<-rbind(human[1],hobby[2])  



install.packages("writexl")
library(dplyr)
library(writexl)
bind_data<-bind_rows(human,hobby)

write.csv(human,"human.csv")
write.table(human,"human.txt",row.names = F,sep = ",")
write_xlsx(human,"human.xlsx")

# df1 <- human["Cinsiyet"]
# names(df1) <- "Deger"
# 
# df2 <- hobby["Fobi"]
# names(df2) <- "Deger"
# 
# rbind_data2 <- rbind(df1, df2)