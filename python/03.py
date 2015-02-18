#!/usr/bin/python
import math

def is_prime(n):
  if n % 2 == 0 and n > 2: 
      return False
  return all(n % i for i in range(3, int(math.sqrt(n)) + 1, 2))

def get_highest_prime_factor(input_num):
  num = int(round(math.sqrt(input_num)))
  num_list = list(xrange(2,num+1))
  for index, num in enumerate(num_list):
    if not num:
      continue
    elif is_prime(num):
      continue
    else:
      num_list[index] = None
  primes = filter(None, num_list)
  for prime in reversed(primes):
    if input_num % prime == 0:
      return prime
  return None

print get_highest_prime_factor(600851475143)