#Homework 4 

load("fish_data (1).Rdata")
library(tidyverse)

#Question 1----
p.d.m <- tapply(X = f$parcel.density.m3, INDEX = (f$transect.id), FUN=mean)
p.d.m
#Question 2 ----
pdmd <- as.data.frame(p.d.m)
pdmd
nrow(pdmd)
pdmd$seq <- 1:39
#there are 39
?as.data.frame 
#Question 3----
colnames(pdmd) <-   "parcel density mean"
head(pdmd)
#Question 4----
transect <- rownames(pdmd)
transect
#Question 5----
p.d.st <- tapply(X = f$parcel.density.m3, INDEX =(f$transect.id), FUN=sd)
pdstd <-as.data.frame(p.d.st)
colnames(pdstd) <-  "parcel density st.dev"
transect <- rownames(pdstd)
transect
nrow(pdstd)
pdstd$seq <-1:39
transect <- as.data.frame(transect)
head(transect)
#There are 39 rows 
transect$seq <- 1:39
#Question 6 ----
?merge
head(pdstd)
head(pdmd)
newdataframe <- merge(transect, c(pdstd,pdmd), by="seq")
head(newdataframe)
nrow(newdataframe)
#There are 1521 
head(newdataframe)
colnames(newdataframe) <- c("transect", "standard dev", "density")
head(newdataframe)
#Question 7 ----
p.d.c <- tapply(X = f$parcel.density.m3, INDEX = list(f$transect.id), FUN=length)
p.d.c
pdcd <- as.data.frame(p.d.c)
head(pdcd)
colnames(pdcd) <- "observation count"
head(pdcd)
nrow(pdcd)
nrow(newdataframe)
pdcd$seq <- 1:39
#Question 8 ----
newdataframe1 <- merge(newdataframe, pdcd, by="seq")
head(newdataframe1)
nrow(newdataframe1)
newdataframe1[,c("seq","seq.1", "transect.y")] <- NULL
head(newdataframe1)
colnames(newdataframe1) <- c("transect.id","density.stdv", "density.mean", "obs.count")
head(newdataframe1)
#Question 9 ----

dens.mean2 <- f %>% group_by(transect.id) %>% summarise(pdens2 = mean(parcel.density.m3))
head(dens.mean2)
#Question 10 ---- 

dmean2 <- as.data.frame(dens.mean2)
head(dmean2)
#Question 11 ---- 
colnames(dmean2) <- c("transect.id","parcel.density.mean")
head(dmean2)
nrow(dmean2)
dmean2$seq <- 1:39
#Question 12 

transect2 <- dmean2[,1]
head(transect2)
transect2.0 <- as.data.frame(transect2)
head(transect2.0)
transect2.0$seq <- 1:39
head(transect2.0)
#Question 13 ---- 
densit.sd2 <- tapply(X=f$parcel.density.m3, INDEX = f$transect.id, FUN =sd)
head(densit.sd2)
dsd2 <- as.data.frame(densit.sd2)
head(dsd2)
ncol(dsd2)
dsd2$seq <- 1:39
head(dsd2)
dsd2$"NA" <- NULL
head(dsd2)
colnames(dsd2) <- c("parcel.density.std", "seq")
head(dsd2)
transect3 <- rownames(dsd2)
head(transect3)
#Question 14 ---- 
dataframe3 <- merge(dmean2,dsd2, by="seq")
head(dataframe3)
dataframe4 <- right_join(x=transect2.0, y=dataframe3, by = "seq")
#Question 15 ---- 
pd3 <- tapply(X=f$parcel.density.m3, INDEX = f$transect.id, FUN=length)
head(pd3)
pd3. <- as.data.frame(pd3)
head(pd3.)
pd3.$seq <- 1:39
head(pd3.)
colnames(pd3.) <- c("count", "seq")
head(pd3.)

#Question 16 
wow <- right_join(dataframe4,pd3., by="seq")

head(wow)
wow[,c("transect2","seq")] <- NULL
head(wow)
nrow(wow)
ncol(wow)
#Question 17 





