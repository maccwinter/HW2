#Homework 4 

load("fish_data (1).Rdata")
library(tidyverse)

#Question 1----
parceldensity.m <- tapply(X = f$parcel.density.m3, INDEX = (f$transect.id), FUN=mean)
head(parceldensity.m)
#Question 2 ----
parceldensity.m.d <- as.data.frame(parceldensity.m)
head(parceldensity.m.d)
nrow(parceldensity.m.d)
parceldensity.m.d$seq <- 1:39
#Question 3----
colnames(parceldensity.m.d) <-  c("density.mean", "seq")
head(parceldensity.m.d)
#Question 4----
transect <- rownames(parceldensity.m.d)
head(transect)
transect <- as.data.frame(transect)
head(transect)
transect$seq <- 1:39
#Question 5----
parceldensity.sd <- tapply(X = f$parcel.density.m3, INDEX =(f$transect.id), FUN=sd)
parceldensity.sd.d <-as.data.frame(parceldensity.sd)
colnames(parceldensity.sd.d) <-  "density.st.dev"
transect <- rownames(parceldensity.sd.d)
nrow(parceldensity.sd.d)
parceldensity.sd.d$seq <-1:39
#Question 6 ----
head(parceldensity.sd.d)
head(parceldensity.m.d)
parcel.density <- merge(transect, c(parceldensity.sd.d,parceldensity.m.d), by="seq")
head(parcel.density)
parcel.density[,c("seq","seq.1")] <- NULL
head(parcel.density)
head(parcel.density)
colnames(parcel.density) <- c("transect", "standard.dev", "mean")
head(parcel.density)
#Question 7 ----
parceldensity.c <- tapply(X = f$parcel.density.m3, INDEX = list(f$transect.id), FUN=length)
head(parceldensity.c)
parceldensity.c.d <- as.data.frame(parceldensity.c)
head(parceldensity.c.d)
colnames(parceldensity.c.d) <- "count"
head(parceldensity.c.d)
nrow(parceldensity.c.d)
parceldensity.c.d$seq <- 1:39
head(parceldensity.c.d)
#Question 8 ----
parcel.density$seq <- 1:39
newdataframe1 <- merge(parcel.density, parceldensity.c.d, by="seq")
head(newdataframe1)
nrow(newdataframe1)
newdataframe1[,"seq"] <- NULL
head(newdataframe1)
colnames(newdataframe1) <- c("transect.id","density.stdv", "density.mean", "obs.count")
head(newdataframe1)
#Question 9 ----

parceldensity.m.2 <- f %>% group_by(transect.id) %>% summarise(density = mean(parcel.density.m3))
head(parceldensity.m.2)
#Question 10 ---- 

parceldensity.m.2.d <- as.data.frame(parceldensity.m.2)
head(parceldensity.m.2.d)
#Question 11 ---- 
colnames(parceldensity.m.2.d) <- c("transect","mean")
head(parceldensity.m.2.d)
nrow(parceldensity.m.2.d)
parceldensity.m.2.d$seq <- 1:39
#Question 12 

transect2 <- parceldensity.m.2.d[,1]
head(transect2)
transect2.0 <- as.data.frame(transect2)
head(transect2.0)
transect2.0$seq <- 1:39
head(transect2.0)
#Question 13 ---- 
parceldensity.sd.2 <- tapply(X=f$parcel.density.m3, INDEX = f$transect.id, FUN =sd)
head(parceldensity.sd.2)
parceldensity.sd.d.2 <- as.data.frame(parceldensity.sd.2)
head(parceldensity.sd.d.2)
ncol(parceldensity.sd.d.2)
parceldensity.sd.d.2$seq <- 1:39
head(parceldensity.sd.d.2)
colnames(parceldensity.sd.d.2) <- c("st.dev", "seq")
head(parceldensity.sd.d.2)
transect3 <- rownames(parceldensity.sd.d.2)
head(transect3)
#Question 14 ---- 
dataframe3 <- merge(parceldensity.m.2.d,parceldensity.sd.d.2, by="seq")
head(dataframe3)
dataframe4 <- right_join(x=transect2.0, y=dataframe3, by = "seq")
head(dataframe4)
dataframe4[,"seq"] <- NULL
head(dataframe4)
#Question 15 ---- 
parceldensity.c.2<- tapply(X=f$parcel.density.m3, INDEX = f$transect.id, FUN = length)
head(parceldensity.c.2)
parceldensity.c.2.d <- as.data.frame(parceldensity.c.2)
head(parceldensity.c.2.d)
parceldensity.c.2.d$seq <- 1:39
head(parceldensity.c.2.d)
colnames(parceldensity.c.2.d) <- c("count", "seq")
head(parceldensity.c.2.d)

#Question 16 
dataframe4$seq <- 1:39
wow <- right_join(dataframe4,parceldensity.c.2.d, by="seq")
head(wow)
wow[,c("transect2","seq")] <- NULL
head(wow)
nrow(wow)
#Question 17 

length6.0 <- f %>% group_by(f$transect.id, f$parcel.id) %>% summarise(min = min(f$parcel.length.m),low95 = quantile(f$parcel.length.m,0.95),median =median(f$parcel.length.m), up95 = (quantile(f$parcel.length.m,1)-quantile(f$parcel.length.m,0.95)),max = max(f$parcel.length.m) )

head(length6.0)





