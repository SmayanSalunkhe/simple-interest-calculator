
#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (years): " time

# Calculate Simple Interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $interest" | bc)

echo "------------------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "------------------------------------"
