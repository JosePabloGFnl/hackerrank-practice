'''
The included code stub will read an integer, n, from STDIN.

Without using any string methods, try to print the following:

123...n
Note that "..." represents the consecutive values in between.

Example
n=5
Print the string 12345.
'''
if __name__ == '__main__':
    n = int(input())
    
s = ""

for i in range(n):
    s = s + str(i+1)
    
print(s)
