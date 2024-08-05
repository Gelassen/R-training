# **Task 2.2:** Create a function that takes a number as input and returns 
# "Even" if the number is even and "Odd" if the number is odd.

check_even_odd <- function(number) {

    if (number %% 2 == 0) {
        print("Even")
    } else {
        print("Odd")
    }

}

for (i in 1:20) {
    check_even_odd(i)
}