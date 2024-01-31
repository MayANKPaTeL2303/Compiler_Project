
# Assignment 1(Lexical Analyser)

The R programming language is used for statistical computing and data visualization created by Ross Ihaka and Robert Gentleman.



## Authors

- [Mayank Patel and Maneesh Bhaskar](https://github.com/MayANKPaTeL2303/Compiler_Project)

---

## Code To Run
var1 <- var2 <- var3 <- "Orange" \
my_var <<- 3

x <- 10.5   # numeric \
y <- 10L    # integer \
z <- 1i	    # complex

10 > 9     \
10 == 9    \
10 < 9    

class(x) \
print(name) \
paste("R is", text) 


if (b > a) {
  print ("b is greater than a")
} \
else if (b==a){
	print ("b is equal to a")
} \
else {
  print("b is not greater than a")
}


while (i < 6)  
{  
  print(i) \
  i <- i + 1 \
  next \
  break \
}
\
\
for (x in 1:10)  \
 { \
  print(x)\
}





my_function <- function() \
{ 
    # create a function with the name my_function
  print("Hello World!")
  return (5 * x)
} 

my_function("Stewie")


### Vector of strings
fruits <- c("banana", "apple", "orange")
sort(fruits)  # Sort a string


### List of strings
thislist <- list("apple", "banana", "cherry")
length(thislist)
"apple" %in% thislist 
append(thislist, "orange")

### Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

### An array 
multiarray <- array(thisarray, dim = c(4, 3, 2))


### Create a data frame
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)



### Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

## Instructions:

1. Identifiers

* Rules for R variables are:
   + A variable name must start with a letter and can be a    combination  of letters, digits, period(.)and underscore(_).
   + If it starts with period(.), it cannot be followed by a digit.
   + A variable name cannot start with a number or underscore.
   + Variable names are case-sensitive (age, Age and AGE are three different variables)
   + Reserved words cannot be used as variables (TRUE, FALSE, NULL, if...)


* Legal variable names:
var <- "John"\
my_var <- "John"\
Var <- "John"\
MYVAR <- "John"\
myvar32 <- "John"\
.myvar <- "John"

* Illegal variable names:
2var <- "John"\
my-var <- "John"\
my var <- "John"\
_myvar <- "John"\
TRUE <- "John"

---
2. Data Type
* Basic data types in R can be divided into the following types:
  * numeric - (10.5, 55, 787)
  *   integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
  * complex - (9 + 3i, where "i" is the imaginary part)
  * character (i.e string) - ("k", "R is exciting", "FALSE", "11.5")
  * logical (i.e boolean) - (TRUE or FALSE)
---
3. Operators:
* Arithemetic Operators 
   * Addition	x + y	
   * Subtraction	x - y	
   * Multiplication	x * y
   * Division	x / y	
   * Exponent	x ^ y	
   * Modulus (Remainder from division)	x %% y	
   * Integer Division	x%/%y
* Assignment Operators
   * <- , -> (Local Assigner)
   * <<- , ->> (Global Assigner)
* Comparison Operators
   * Equal	x == y	
   * Not equal	x != y	
   * Greater than	x > y	
   * Less than	x < y	
   * Greater than or equal to	x >= y	
   * Less than or equal to	x <= y
* Logical Operators
   * &	Element-wise Logical AND operator. It returns TRUE if both elements are TRUE
   * &&	Logical AND operator - Returns TRUE if both statements are TRUE
   * |	Elementwise- Logical OR operator. It returns TRUE if one of the statement is TRUE
   * ||	Logical OR operator. It returns TRUE if one of the statement is TRUE.
   * !	Logical NOT - returns FALSE if statement is TRUE
* Miscellanous Operators
   * :	Creates a series of numbers in a sequence	x <- 1:10
   * %in%	Find out if an element belongs to a vector	x %in% y
   * %*%	Matrix Multiplication	x <- Matrix1 %*% Matrix2


---
4. Statements(if,if-else,for,etc)
* if
* else
* else-if
* while
* for
---
5. Programmer defined functions & Predefined functions
* To create a function, use the function() keyword
* To call a function, use the function name followed by parenthesis, like my_function().
* which.max(Data_Cars$hp) - Use to find the maximum in data set "Data_Cars$hp".
* which.min(Data_Cars$hp) - Use to find the minimum in data set 
  "Data_Cars$hp".
* mean,median,sort - Use to find the mean,median and sort of       the data set.

---

6. Comments
* Comments starts with a #.
* Eg. # This is a comment.

---

## Run Locally

Clone the project

```bash
  git clone https://github.com/MayANKPaTeL2303/Compiler_Project
```

Go to the project directory

```bash
  cd Compiler_Project
```

```bash
  lex trail.l && gcc lex.yy.c && ./a.out
```

