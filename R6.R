  setwd("C:\\Users\\rehim\\OneDrive\\Desktop\\R-Giris-Seviyesi-Egitimi-main\\ödevler\\ödev2\\fonksiyon_ödev_1")
   
  library(readxl)
   function_task1<- read_xlsx("meyve_sebze.xlsx")

   
   stock_control<- function(){
   x<- as.character(readline(prompt = "arastirmak istediginiz urun ismini girin: "))    
     if(x %in% function_task1$Meyve){
       print("meyve")
     }else if(x %in% function_task1$Sebze){
       print("sebze")
     }else{
       print("yok")
     }
   }
     
   stock_control()
   
   
   