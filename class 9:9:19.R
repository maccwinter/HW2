#class 9/9/19
a <- c(2:14)

a
a[[3]]
b <- c("hello", "cat", "dog", "pig", "taco.cat")
b
b[[4]]


b <- list(b)
b
str(b)
class(b)
typeof(b)
#index = extract items from list based on their position. But what if we have columns and rows
m <- matrix(data=1:12, nrow = 4, ncol = 3, dimnames = list(c("r1","r2","r3","r4"), c("c1","c2","c3")))
m

a.ray <- array(data = 1:24, dim=c(3,4,2))
a.ray
a.ray[[1,3]]
a.ray[2,3,2]
a.ray[3,4,2]
a.ray[3,4,1]
a.ray[[3]]
#yields 3 because thats third number in set (goes down, then to next column, then to next 3rd dimension)
df <- data.frame(a=c(1,2,3,4), b=c(1,2,3,4))
df
df.matrix <- as.matrix(df)
df.matrix
df[3,2]
#yields 3. (3rd row 2nd comulm has the value 3) 
df$b
#gives me all the values in comun b! 
df[,2]
#gives me values in 2nd column 
#mac pay better attention gosh. LOL. If i type right now, people will think I'm like really involved with what is going on OMG. 
# to subset data, say (arbitrary letter) <- dataframname[dataframename$group == "group in datafram",]$nameofcolumnyouwantthennumberofrow
v <-fish$year
v
#v is the year column. To know the data dype, I put class(v)
class(v)
#The data type for the year column is "character"
str(fish)
#Ok I got the structure. So basically the five types are: character, factor, numerical, integer, and POSIXct
q <- fish$area_fac
q
l <- as.character(q)
l
class(l)
#the class is character 
#So I wrote as.character(l) where l denotes the area_fac data. Doing this converted that data from factor data to character data. :) 



