'''
A counter is a container that stores elements as dictionary keys, and their counts are stored as dictionary values.
Task

Raghu is a shoe shop owner. His shop has X number of shoes.
He has a list containing the size of each shoe he has in his shop.
There are N number of customers who are willing to pay xi amount of money only if they get the shoe of their desired size.

Your task is to compute how much money Raghu earned.

Input Format

The first line contains X, the number of shoes.
The second line contains the space separated list of all the shoe sizes in the shop.
The third line contains N, the number of customers.
The next N lines contain the space separated values of the shoe size desired by the customer and xi, the price of the shoe.
'''
# Enter your code here. Read input from STDIN. Print output to STDOUT
from collections import Counter
X = int(input())
shoe_sizes = Counter(map(int, input().split()))
N = int(input())

STDOUT = 0

desired_shoes = {}
for customer in range(N):
    desired_size, xi = ((map(int, input().split())))
    if shoe_sizes[desired_size]:
        STDOUT += xi
        shoe_sizes[desired_size] -= 1
        
print (STDOUT)
