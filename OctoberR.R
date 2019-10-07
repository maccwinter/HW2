#October R 

load("fish_data (1).Rdata")
f


fs <- f[,c("transect.id", "area_fac", "depth_fac", "parcel.id", "parcel.density.m3", "parcel.length.m")]
head(fs)


#How to rename a field (or column)
library(tidyverse)
fs <- rename(.data=fs, tid =transect.id)
fs <- rename(.data=fs, area=area_fac)
fs <- rename(.data=fs, depth=depth_fac)
fs <- rename(.data=fs, pid = parcel.id)
fs <- rename(.data=fs, pl = parcel.length.m)
fs <- rename(.data=fs, pd=parcel.density.m3)
names(fs)[1] = c("transect")
names(fs)[1:3] = c("transect", "area","depth")
head(fs)
#using the function "melt" from the reshape2 package to change data frame from wide
#to long format ---- 
library(reshape2)
?melt

fs.melt <- melt(data=fs, id.vars=c("transect", "pid", "area","depth"), measure.vars = c("pl","pd"), value.name = c("numbers") )

#id.vars means those will stay columns, and measure.vars converts columns to rows. 
head(fs.melt)
unique(fs.melt$variable)

#using dcast (reshape2) function to transform your data from long to wide format ----
fs.cast <- dcast(data=fs.melt, formula=transect~variable, value.var = c("numbers"), fun.aggregate=mean)
#formula means what headers you want to go wide
#value.var  specifies the values 
head(fs.cast)


#spread and gather (tidyverse) ---- 
#gather takes longway data and makes into two columns 
fs.gather <- fs %>% group_by(transect, area, depth, pid) %>% gather(key='variable', value = 'value', pd, pl)
#key is name of column with identifying information 
head(fs.gather)
#we talked about fs.spread, but it is to be worked on later, it didn't work ---- 
#removing duplicates ---- 
o1 <- fs[1,]
o2 <- fs[1,]
o3 <- fs[1,]
o4 <- fs[2:10,]
#bind these individual objects back together using function"rbind"
o <- rbind(o1,o2,o3,o4)

#now the first 3 rows are duplicate observations 
no.dups <-o[!duplicated(o),]
#and now the duplicated are gone 

dups <- o[duplicated(o),]
#now I just got all the duplcates to see them 
head(dups)
head(no.dups)

?complete.cases
#complete cases removes lines where there are no NAs 

#data with NAs 
fs[2,]$pd <- NA
fs[4,]$pl <- NA 
fs.complete <- fs[complete.cases(fs),] 
head(fs.complete)

#sorting data ---- 
attach(mtcars)
#sort by mpg 

nd <- mtcars[order(mpg),]
#using arrange function 

nd.arrange <- arrange(.data =mtcars, mpg)
nd.arrange.desc <- arrange(.data =mtcars, desc(mpg))
nd.arrange <- arrange(.data =mtcars, mpg, cyl) #ascending
#Just arranged with 2 variables, mpg and cyl, instead with on variable 
nd.arrange <- arrange(.data =mtcars, cyl, desc(mpg)) #descending mpg 







