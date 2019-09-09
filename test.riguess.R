#gradschoolproblems
orale = 1
2 -> andale
"characterobject"
1:1
8+3
factor(1/2)
'%characterobject%' <-function(a, b){8+3*a -b}
1 %characterobject% 1
#This operator creates a function, under the name "characterobject" that adds 8 -3(value of a) and subtracts the value of b. I assign the values of a and b by placing them before and after, respectively, %characterobject%
1%/%1
# the 1%/%1 divides two numbers (in this case 1 by 1) to calculate the amount of integer factors the right number muliplies by to get the first integer. 
3^8
#The ^ operater sits between two numbers. The ^ is an exponent function, it puts the first number to the power of the second number. So 3^8 puts 3 to the power of 8, which is 6561
1:10
#this is a sequence
x <- 3; y <- 5; z <- 7
x*y +z
x*(y+z)
#The first operation yields 22 while the second operation yields 36. The reason is because R follows orders of operation, which can be disrupted by parenthesis.
#Inf refers to a positive number is too large to process. So if I put 100^1000, the result will be so big, it will say Inf. 
100^1000
#-Inf refers to a negative number that's value is too high to process. For example, I get -Inf when I enter -101^1000
-101^1000
0/0
#NaN refers to a computation that does not make sense, such as when 0/0. There is no definitive answer to that operation. 
m #NULL is a way of designatimg a certain argument as having no assigned values. A way to make an argument h NULL is to commamd as.null(h)
h<-1:10
as.null(h)
print(x+y+z)
#Below will be my integer division
z%/%x
#yielded 2. Now I will do the modulus 
z%%x
#yielded 1. Now I will do an exponent 
x^y
#yielded 243. 
switcheroo.if.then <-function(i){if (i ==x) "loon" else if (i ==y) "frog" else if (i ==z) "cat" else "wolf" }
switcheroo.if.then(x)
fish <-load(file="fish_data (1).Rdata")
fish
NROW(fish)
#The number of rows is 2026
NCOL(fish)
#There are 23 columns
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
p <- fish$avg.DNE.m
p
#To remove the avg.DNE.m I wrote fish$avg.DNE.m = NULL. I assigned that column (avg.DNE.m) as NULL. 
fish$avg.DNE.m =NULL
str(fish)




