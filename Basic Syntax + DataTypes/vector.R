

apple <- c('red','green',"yellow")
print(apple)
print(class(apple))
is.vector(apple)


apple_count <- c(10,12,4)

names(apple_count) <- apple

print(apple_count)

apple_count <- c(red = 10, green=12, yellow=4)
apple_count <- c("red" = 10, green = 12, "yellow" = 4)
apple_count <- c("red" = 10, "green" = 12, "yellow" = 4)

# Single Length vector

X = 10 #<-
Y = "20" #<-
z <- 11.3 # =

is.vector(X)
#>> TRUE
is.numeric(X)
#>> TRUE

is.vector(Y)
#>> TRUE
is.charace(Y)
#>> TRUE

is.vector(z)
#>> TRUE
is.numeric(X)
#>> TRUE
