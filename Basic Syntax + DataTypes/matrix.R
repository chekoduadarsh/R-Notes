print(matrix(1:6, nrow=2))

print(matrix(1:6, ncol=2))

print(matrix(1:6, nrow=2, byrow = TRUE))


# Recycling
print(matrix(1:3, ncol=2, nrow=3))

# It repeats the value filling column by column 

print(matrix(1:3, ncol=2, nrow=2))

#cbind, rbind

#Used to binf vectors by Column or Row

print(cbind(1:3, 3:1))


print(rbind(1:3, 3:1))

m <- matrix(1:6, byrow=TRUE, nrow=2)
m <- rbind(m,7:9)
print(m)


# Naming

rownames(m) <- c("one", "two", "three")
print(m)


colnames(m) <- c("Cone", "Ctwo", "Cthree")
print(m)


m <- matrix(1:6, byrow=TRUE, nrow=2,
							 dimnames = list(c("one","two"),c("c1","c2","c3")))
print(m)


#Subseting by id

print(m[1,2])


print(m[2,3])



print(m[2,])

print(m[,3])

print(m[3]) # Goes column by column left to right 

print(m[6])

print(m[2, c(1,2)])


#Subseting by name

print(m["two","c1"])
print(m[2, "c1"])

# Rules of vector recyclicing works here too!!!!
