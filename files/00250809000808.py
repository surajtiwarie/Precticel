# Program to find maximum and minimum values in a list using a loop

# Input the number of elements
n = int(input("Enter number of elements in the list: "))

numbers = []

# Input the list elements
for i in range(n):
    num = int(input(f"Enter element {i+1}: "))
    numbers.append(num)

# Assume first element as both max and min initially
maximum = numbers[0]
minimum = numbers[0]

# Loop through the list to find max and min
for num in numbers:
    if num > maximum:
        maximum = num
    if num < minimum:
        minimum = num

# Display the result
print("List entered:", numbers)
print("Maximum value in the list is:", maximum)
print("Minimum value in the list is:", minimum)
