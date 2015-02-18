#!/usr/bin/python

def get_fib_array(max_num):
  fib_array = [1, 2]
  if max_num < 2:
    return False
  last_num = sum(fib_array[-2:])
  while True:
    last_num = sum(fib_array[-2:])
    if last_num > max_num:
      return fib_array
    fib_array.append(last_num)

def sum_evens(array):
  summation = 0
  for num in array:
    if num % 2 == 0:
      summation += num
  return summation

fib_array = get_fib_array(4000000)

print sum_evens(fib_array)