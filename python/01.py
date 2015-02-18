#!/usr/bin/python

result = 0

for num in xrange(1,1000):
  if num % 3 == 0 or num % 5 == 0:
    result += num

print result


# Closed form (fastest?)
# def arithmetic_sum(n):
#   return (n + 1) * n / 2

# def sum_nm(n, m):
#   return n * arithmetic_sum(m / n)

# result = sum_nm(3, 999) + sum_nm(5, 999) - sum_nm(3 * 5, 999)

# print result