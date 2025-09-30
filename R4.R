
library("readxl")

ad<- read_xlsx("ödevler\\ödev1\\ad_cinsiyet_okulnu.xlsx")
boy<- read_xlsx("ödevler\\ödev1\\boy_listesi.xlsx")
hobby<- read_xlsx("ödevler\\ödev1\\hobi_fobi_yemek.xlsx")

new_data<- merge(ad,hobby,by.x = "Ad-Soyad",by.y = "Ad-Soyad")
#new_data<- merge(ad,hobby,by.x = 1,by.y = 1)   kolon nomresine gore
#new_data<- merge(ad,hobby,by="Ad-Soyad")    ikisindede eyni adda olarsa
new_data<- merge(new_data,boy,by.x = 1,by.y = 1)


class(new_data$Boy)
 
new_data$Boy<-as.numeric(new_data$Boy)

new_data$Boy<- gsub("cm","",new_data$Boy)
new_data$Boy<- new_data$Boy/100

colnames(new_data)<-c("ad_soyad","E/k","numara","sevdigi","sevmedigi","food","BOY")

write.csv(new_data,"Odev1.csv")
write.csv2(new_data,"Odev1.csv")
 