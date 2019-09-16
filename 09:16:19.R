#Class September 16 
list.files(pattern=".txt")
#This finds the file that is a text file. 
#I found that long-ass ISI37281080643820`48930217483902 file`

#To get the file read in. I will name it "o" 
o <- read.table(file='ISIIS201405291242.txt', sep = "\t", skip=10, header=TRUE, fileEncoding = "ISO-8859-1", stringsAsFactors = FALSE, quote = "\"", check.names = FALSE, encoding="UTF-8", na.strings="9999.99")
#\t meas tab delimited. Skip=10 means skip first ten lines, header means we want a header lol. Don't worry about the rest... just copy it.
o
#It worked yay lol omg lmfao #hype #Igotthis #imbored #whatyadoin 

#What we're going to do is get r to report the date that this dataset ISII483921-7439-17493-7145890472 was collected 

date <- scan(file='ISIIS201405291242.txt', what="character", skip = 1, nlines=1, quiet=TRUE)
date
#OMG I asked R on a date and it gave me a time!! yay... but that date is in the past so I guess it's a no :/ #friendzoned
#The date is 05/29/14. I asked for the 2nd line (hence skip=1, and I onle wanted 1 line (nlines=1))
# I got this [1] "Date:"    "05/29/14"

library("stringr")
#downloaded library stringr 

#we're going to work with the str_sub function. Let's ask r what the arguments are. 
?str_sub

date <- date[2]

mm <- str_sub(string=date, start =1, end=2)
mm
#it gave me the month (05)
#for the day

dd <- str_sub(date, 4,5)
dd
#it gave me "29", which is the correct date 
#now time for year 
yy <-str_sub(date,7,8)
yy
#And the year was "14" which is correct 
#make object dateNextDay 
#str_c concatenates three things together,as shown below 
dd <-as.numeric(dd)
#just sett dd as s numeric value
dateNextDay <- str_c(mm,as.character(dd+1),yy, sep ="/")
dateNextDay
#I got 05/30/14, which is the date plus 1 day!
#Ok now we are looking at more time stuff in the dataset 
head(o)
str(o$Time)
#chr [1:6843] "12:42:32.78" "12:42:33.18" "12:42:33.72" "12:42:34.27" ...

o$hour <- as.numeric(str_sub(o$Time,1,2))
o$hour
#o$hour made new column with the values for hour (done above)
#so watch this there's a new column
head(o)
#Run that and you will see what I mean

o$date <- date
#added date column 
head(o$Time)

o$min <- as.numeric(str_sub(o$Time,4,5))
#Now we can add minute column 
o$min
head(o)
#now there is a minute column 









