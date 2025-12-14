#!/bin/bash

# I have used function to make sure the logic and code is clean & structured
# This Function to check prime

check_prime() {
  num=$1
  if [ "$num" -le 1 ]; then
    echo "Not a prime number"
    return
  fi
  for ((i=2; i*i<=num; i++)); do
    if ((num % i == 0)); then
      echo "Not a prime number"
      return
    fi
  done
  echo "Prime number"
}

# Function to check leap year
check_leap_year() {
  year=$1
  if (( (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) )); then
    echo "$year is a Leap Year"
  else
    echo "$year is Not a Leap Year"
  fi
}

# Function to print sum of series
sum_series() {
  n=$1
  sum=0
  for ((i=1; i<=n; i++)); do
    sum=$((sum + i))
  done
  echo "Sum of series from 1 to $n is: $sum"
}

# Main script
read -p "Enter a number: " num

while true; do
  echo "Choose an option:"
  echo "1) Check Prime"
  echo "2) Check Leap Year"
  echo "3) Print Sum of Series (1 to n)"
  echo "4) Exit"
  read -p "Enter your choice: " choice

  case $choice in
    1) check_prime "$num" ;;
    2) check_leap_year "$num" ;;
    3) sum_series "$num" ;;
    4) echo "Exiting..."; break ;;
    *) echo "Invalid choice. Try again." ;;
  esac
done