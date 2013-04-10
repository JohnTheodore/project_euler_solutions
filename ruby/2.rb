# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fib(maximum)
  sequence = [1, 2]
  while (sequence[-1] + sequence[-2] < maximum) do
    sequence.push(sequence[-1] + sequence[-2])
  end
  return sequence
end

start = Time.now
answer = fib(4000000).select { |i| i % 2 == 0 }.inject(:+)
puts "Found answer: #{answer} in #{Time.now - start} seconds"