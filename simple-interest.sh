#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest, and time period in years.

# Author: Upkar Liddar(IBM)
# GitHub: srikriydv

# Function to validate numerical input
validate_input() {
    local input=$1
    if ! [[ $input =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Error: Please enter a valid numerical value."
        exit 1
    fi
}

echo "Simple Interest Calculator"
echo "--------------------------"

# Input: principal amount
read -p "Enter the principal amount: " principal
validate_input "$principal"

# Input: rate of interest per year
read -p "Enter the annual rate of interest (%): " rate
validate_input "$rate"

# Input: time period in years
read -p "Enter the time period in years: " time
validate_input "$time"

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Output simple interest
echo "--------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
