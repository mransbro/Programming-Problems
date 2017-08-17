# https://adriann.github.io/programming_problems.html

# Elementary

# Write a program that prints ‘Hello World’ to the screen.
    echo 'Hello World'

# Write a program that asks the user for their name and greets them with their name.
    echo 'Hello, who am i talking to?'
    read varname
    echo It\'s nice to meet you $varname

# Modify the previous program such that only the users Alice and Bob are greeted with their names.
    echo 'Hello, who am i talking to?'
    read varname
    if [ $varname == 'Alice' ] || [ $varname == 'Bob' ]
    then
        echo It\'s nice to meet you $varname
    else
        echo It\'s nice to meet you
    fi

# Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
    echo Please input a number
    read n
    seq 1 $n
    
# Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17
    echo Please input a number
    read n
    seq 1 $n

# Write a program that asks the user for a number n and gives them the possibility to choose between computing the sum and computing the product of 1,…,n.
# Write a program that prints a multiplication table for numbers up to 12.
# Write a program that prints all prime numbers. (Note: if your programming language does not support arbitrary size numbers, printing all primes up to the largest number you can easily represent is fine too.)
# Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether their number was too large or too small. At the end the number of tries needed should be printed. I counts only as one try if they input the same number multiple times consecutively.
# Write a program that prints the next 20 leap years.
# Write a program that computes 4\cdot \sum_{k=1}^{10^6} \frac{(-1)^{k+1}}{2k-1} = 4\cdot(1-1/3+1/5-1/7+1/9-1/11\ldots).