#this is a comment
age <- 20
print(age)

message <- "Hello"

message2 <- paste(message, "World", "bye")
message2

num1 <- num2 <- 2

print(num1 + num2)

class(message)
class(num1)
class(10.5)
class(1i)
print(ceiling(1.4))
print(floor(1.4))
grepl("h", "hello")
1 == 2

a <- 2
b <- 1

if(b > a){
	print("hello")
	}else if (a == b){
		print("bye")
	}else{
		print("ahh")
	}

i <- 1
while(i < 4){
	print(i)
	i <- i + 1
}

my_function <- function(){
	print("hello")
}

my_function()

name <- function(sname = "xd"){
	paste("Robert", sname)
}

name("DeNiro")
name()

mathf <- function(n = 1){
	return (n * 2)
}

mathf(2)
mathf()

fruits <- c("banana", "orange", "apple")
print(fruits)

numbers <- c(2, 4, 1, 3)
print(numbers)

sort(numbers)

print(fruits[1])
