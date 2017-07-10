## Setup home directory and preferences



## Go over the parts of the RSTudio Screen



# Getting started
1 + 1  # Entering this on the keyboard gives 2

# Creating a variable and storing a value
var1 <- 1
var2 = 3  # This works too, R-ists prefer the arrow

# Valid variable names

var1
var_2  # I like this
var.3  # This is pretty standard among R-ists

# Invalid variables
1var
var 1


# Scalar Types

1 # Integer
2.3 # Float
"a" # A character
"a string" # a String
TRUE # boolean/logical
FALSE # boolean/logical

############################################
############################################
# Vectors

## Vectors are s sequence of values all of the same type

first_vector <- c(1, 2, 3, 5, 7, 11)   # Creating a vector the hard way
second_vector <- c(1:5)
sequence_vector <- seq(1, 10, 0.1)

vector_of_characters <- c("a", "b", "3")
vector_of_logicals <- c(TRUE, FALSE, FALSE)

## Vectors need to be all the same type
bad_vector_1 <- c("a", "b", 3)  # Coerces the 3 to "3" 
bad_vector_2 <- c(1, 2, 3.3)  # Coerces the integers to floats
bad_vector_3 <- c(TRUE, 1, "c")  # Coerces everything to characters

## Accessing parts of vectors

sequence_vector[1]   # Second position, would be 0 in other langauges
sequence_vector[6]   # Sixth position

sequence_vector[1:10]  # Get a slice
sequence_vector[c(1, 5, 20)]  # Get specific indeces

############################################
############################################
# Lists 

## Lists are a sequence of values that don't have to be the same type

first_list <- list("Fred", 24, FALSE, first_vector) # it can even include vectors and lists

first_list[[2]]  # They work almost the same as vectors but two brackets

## You can list parts of a list
named_list <- list(name="Sue", age='32', smoker=FALSE, data=second_vector)

named_list$name  # This is how you can get parts of a named list
named_list[[2]]  # Or this way
named_list[["data"]]  # Or even this way!



############################################
############################################
# Data Frames

## Data frames are a list of vectors all of the same length. It is unique to R,
## But you can think of it as a spreadsheet 

## Creating a dataframe (one way)
col_1 <- c(1:4)
b <- c("George", "Cassandra", "Phineas", "Ferb")
col_three <- c(TRUE, FALSE, FALSE, TRUE)

first_data_frame <- data.frame(col_1, b, col_three)

# We can add better names
names(first_data_frame) <- c("id", "name", "smoker")

# We can add  new column
first_data_frame$sex <- c("male", "female", "male", "female")

# Adding a row turns out to be a pain, but check out this stackoverflow if you like
# https://stackoverflow.com/questions/28467068/add-row-to-dataframe
# I don't think I've ever had to do this

## Accessing parts of a data frame
first_data_frame$name   # Get one column by name
first_data_frame[1]     # Get one column by index
first_data_frame[1:3]   # Get the first three columns
first_data_frame[c("id", "smoker")]  # Get columns by name

############################################
############################################
# Functions

## Functions do things to data, they take input and give output
## A lot of functions are built in.

mean(c(1, 4, 6, 8))  # Get a mean of this vector.

help("mean")  # The help function is useful for learning how to use other functions

# You can write your own function too

im_a_cowboy <- function(name) {
  output <- paste("I'm cowboy", name, "! Howdy howdy howdy!!")
  return(output)
}


############################################
############################################
# Packages

# Packages are a bunch of functions, usually centered around a specific theme. 
# There are a lot of them.












