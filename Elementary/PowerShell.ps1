# https://adriann.github.io/programming_problems.html

# Elementary

# Write a program that prints ‘Hello World’ to the screen.
    Write-Output 'Hello World'

# Write a program that asks the user for their name and greets them with their name.
    [string]$name = Read-host 'Hi, Whats your name?'
    Write-output "Hello $name"

# Modify the previous program such that only the users Alice and Bob are greeted with their names.
    [string]$name = Read-host 'Hi, Whats your name?'
    if ($name -match 'Alice' -or $name -match 'Bob') {
        Write-output "Hello $name"
    } else {
        Write-output 'Hi there stranger!'
    }
    
# Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
    [int]$n = Read-Host 'Please enter a number?'
    $total = 0
    (1..$n) | ForEach-Object {$total += $_}
    Write-output "The sum of numbers from 1 to $n equals $total"
    
# Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17
    [int]$n = Read-Host 'Please enter a number?'
    $total = 0
    (1..$n) | ForEach-Object {$total += $_}
    Write-output "The sum of numbers from 1 to $n equals $total"

# Write a program that asks the user for a number n and gives them the possibility to choose between computing the sum and computing the product of 1,…,n.


# Write a program that prints a multiplication table for numbers up to 12.
    1..12 | foreach-object 

# Write a program that prints all prime numbers. (Note: if your programming language does not support arbitrary size numbers, printing all primes up to the largest number you can easily represent is fine too.)


# Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether their number was too large or too small. 
# At the end the number of tries needed should be printed. I counts only as one try if they input the same number multiple times consecutively.
    $secret = Get-random -Minimum 1 -Maximum 5
    Write-Host "Lets play a game of high or low. I'll think of a number between 1 and 100 and you have to guess it."
    [int]$guess = Read-host "What number am i thinking of?"
    $turn = 1

    While ($guess -ne $secret) { 
        
        if ($guess -gt $secret) {
            Write-output "You guessed too high"
            [int]$guess = Read-Host "Guess again"
        }
        elseif ($guess -lt $secret) {
            Write-Output " You guessed too low"
            [int]$guess = Read-host "Guess again"
        }
        if ($guess -eq $lastGuess) {
            $turn++
        }
        $lastGuess = $guess
    }
    Write-output "Congratulations you guessed the number in $turn guesses!"


# Write a program that prints the next 20 leap years.
    [int]$year = (get-date -Format yyy)
    $leapYear = @()
    do {
        if (($year / 4).GetTypeCode() -eq 'Int32') {
            if (($year / 100).GetTypeCode() -eq 'Int32') {
                if (($year / 400).GetTypeCode() -eq 'Int32') {
                    $leapYear += $year
                }
            } else {
                $leapYear += $year
            }
        }
        $year++
    }
    Until ($leapYear.count -eq 20)
    Write-output "The next 20 leap years are $leapYear."

    # Always forget about Modulo! Improve code with modulo
    if $year % 4

# Write a program that computes 4\cdot \sum_{k=1}^{10^6} \frac{(-1)^{k+1}}{2k-1} = 4\cdot(1-1/3+1/5-1/7+1/9-1/11\ldots).