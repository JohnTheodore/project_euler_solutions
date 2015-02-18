#!/usr/bin/python

highest_palindrome = 0

for num_a in xrange(100,999):
  for num_b in xrange(100,999):
    product = num_a * num_b
    if str(product) == str(product)[::-1] and product > highest_palindrome:
      highest_palindrome = product
print highest_palindrome