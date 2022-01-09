# Basic Syntax + Data Types

Created: December 12, 2021 7:56 PM
Reviewed: No
Type: Self Learning

### Installing Packages

```r
install.packages("package")
#this command on code will trigger the installation process 
```

### Data Types / Automatic Vector Types

In contrast to other programming languages like C and java in R, the variables are not declared as some data type. The variables are assigned with R-Objects and the data type of the R-object becomes the data type of the variable.

**VECTORS**

single values in R is also considered  a vector. Vectors are homongenus (can hold only one type of data), R will Coerce the the data automatically

```r
# Create a vector.
apple <- c('red','green',"yellow")
print(apple)

# Get the class of the vector.
print(class(apple))

# Results will be
[1] "red"    "green"  "yellow"
[1] "character"

is.vector(apple)
>> TRUE

# Naming Vector

apple_count <- c(10,12,4)

names(apple_count) <- apple

apple_count

>> red   green   yellow
    10      12     4

apple_count <- c(red = 10, green=12, yellow=4)
apple_count <- c("red" = 10, green = 12, "yellow" = 4)
apple_count <- c("red" = 10, "green" = 12, "yellow" = 4)

# Single Length vector

X = 10 #<-
Y = "20" #<-
z <- 11.3 # =

is.vector(X)
>> TRUE
is.numeric(X)
>> TRUE
is.vector(Y)
>> TRUE
is.vector(z)
>> TRUE
is.numeric(X)
>> TRUE
```

### **Matrix**

Matrix is a 2D vector, columns and rows, and can hold only one vector type (homogeniuos) in nature. Fills column wise

```r
matrix(1:6, nrow=2)
>>
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

matrix(1:6, ncol=2)
[,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6

matrix(1:6, nrow=2, byrow = TRUE)
>>
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6

# Recycling
matrix(1:3, ncol=2, nrow=3)
>>
[,1] [,2] [,3]
[1,]    1    3    2
[2,]    2    1    3
# It repeats the value filling column by column 

matrix(1:3, ncol=2, nrow=2)
>>
     [,1] [,2]
[1,]    1    3
[2,]    2    1
Warning message:
In matrix(1:3, ncol = 2, nrow = 2) :
  data length [3] is not a sub-multiple or multiple of the number of rows [2]
# It will through warning if the multiple of the vector cant fill it properly

#cbind, rbind

#Used to binf vectors by Column or Row

cbind(1:3, 3:1)
>>
[,1] [,2]
[1,]    1    3
[2,]    2    2
[3,]    3    1

rbind(1:3, 3:1)
>>
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    3    2    1

m <- matrix(1:6, byrow=TRUE, nrow=2)
m <- rbind(m,7:9)
print(m)
>>
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
[3,]    7    8    9

# Naming

rownames(m) <- c("one", "two", "three")
print(m)
>>
[,1] [,2] [,3]
one      1    2    3
two      4    5    6
three    7    8    9

colnames(m) <- c("Cone", "Ctwo", "Cthree")
print(m)
>>
Cone Ctwo Cthree
one      1    2      3
two      4    5      6
three    7    8      9

m <- matrix(1:6, byrow=TRUE, nrow=2,
							 dimnames = list(c("one","two"),c("c1","c2","c3")))
print(m)
>>
c1 c2 c3
one  1  2  3
two  4  5  6

#Subseting by id

print(m[1,2])

>>
	2

print(m[2,3])

>>
	3

print(m[2,])
>>
 4 5 6

print(m[,3])
>>
   3 6

print(m[3]) # Goes column by column left to right 
>>
			2
print(m[6])
>>
		6

print(m[2, c(1,2)])
>>
   4 5

#Subseting by name

print(m["two","c1"])
print(m[2, "c1"]

# Rules of vector recyclicing works here too!!!!

```

**Lists**

```r
# Create a list.
list1 <- list(c(2,5,3),21.3,sin)

# Print the list.
print(list1)

# Results will be

[[1]]
[1] 2 5 3

[[2]]
[1] 21.3

[[3]]
function (x)  .Primitive("sin")
```

Logical

```r
TRUE
FALSE
NA
```

Numerics

```r
2
2.5

2L #Integer
2 #Numeric

is.numeric(2L)
is.integer(2L)
```

CharacterString

```r
"Simple String"
```

complex

```r
2+3i
```

# Corcion

```r
as.numeric("TRUE")
>> 1
as.character(4)
>> "4"
as.integer(4.5)
>> 4
as.numeric("Hello")
>> NA (Warning message)
```