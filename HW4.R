#Homework 4 

load("fish_data (1).Rdata")

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
#Question 6 
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
#Question 7 
p.d.c <- tapply(X = f$parcel.density.m3, INDEX = list(f$transect.id), FUN=length)
p.d.c
pdcd <- as.data.frame(p.d.c)
head(pdcd)
colnames(pdcd) <- "observation count"
head(pdcd)
nrow(pdcd)
nrow(newdataframe)
pdcd$transect <- newdataframe[,"transect"]
newdataframe1 <- merge(newdataframe, pdcd )
head(newdataframe1)
newdataframe1
head(pdcd)
head(newdataframe1)






