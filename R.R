install.packages("readxl")
library(readxl)

setwd("C:\\Users\\rehim\\OneDrive\\Desktop\\R-Giris-Seviyesi-Egitimi-main")

cow <- read.csv("cow_all_genes.csv")

dog<-read_xlsx("dog.xlsx")
chimpanze<-read.delim("chimpanze_all_gene.txt")
dog_list<- as.list(dog)
kib<-read_xlsx("C:\\Users\\rehim\\OneDrive\\Documents\\Kibertəhlükəsizlik Tarixinin Xronologiyası.xlsx")
dog_matrix<-as.matrix(dog)
a<-(1:10)
class(dog$`Canis lupus`)
class(dog_matrix)
x<-(1:99)
y<-c("salam","saqol","nbr")
z<-(1:7)
new_data<- data.frame(x,y)
class(new_data$y)
class(new_data$x)
new_data_matrix<-matrix(x,z)





if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ggmsa")


human<-read_xlsx("ad_cinsiyet_okulnu.xlsx")
x<-c(1,2,3,4,5,6)
in_human<-human[1:3,1:2]
inn_human<-human$Cinsiyet
names(human)<-c("name-surname","gender","school-num")

data<-human[3:1]
human$`name-surname`[2]<-"yahya"
human$`name-surname`<-"name"
 install.packages("dplyr")
library(dplyr)
mans<-human %>% 
  filter (gender=="E" | `school-num`==3)
 select_data<-human%>%
   select(1:2)
new_name<-human%>%
  rename(Name=`name-surname`)






























