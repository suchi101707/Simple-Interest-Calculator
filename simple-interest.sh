#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest: " rate
read -p "Enter Time Period (in years): " time

# Validate inputs
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ &&
        "$rate" =~ ^[0-9]+([.][0-9]+)?$ &&
        "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid positive numbers."
    exit 1
fi

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "Simple Interest = $simple_interest"
