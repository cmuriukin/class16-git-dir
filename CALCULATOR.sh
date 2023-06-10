#!/bin/bash

# Read the first number
echo "Enter the first number:"
read num1

# Read the second number
echo "Enter the second number:"
read num2

# Display the menu of operations
echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read operation

# Perform the selected operation
case $operation in
  1)
    result=$(echo "$num1 + $num2" | bc)
    ;;
  2)
    result=$(echo "$num1 - $num2" | bc)
    ;;
  3)
    result=$(echo "$num1 * $num2" | bc)
    ;;
  4)
    result=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "Invalid operation!"
    exit 1
    ;;
esac

# Display the result
echo "Result: $result"

#This Calculator was created by Charles
