# The following iterative sequence is defined for the set of positive integers:
# n  n/2 (n is even)
# n  3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.


def collatz(num)
  set = Array.new(0)
  set << num
  until set[-1] == 1
     if set[-1].even?
       set << set[-1] / 2
     else
       set << ((3 * set[-1]) + 1)
     end
  end
  set
end

def high_collatz(num)
  winner = Array.new(0)
  (1..num).each do |i|
    set = collatz(i)
    (winner = set) if (set.count > winner.count)
  end
  winner[0]
end

start = Time.now
answer = high_collatz(1000000)
puts "Found answer: #{answer} in #{Time.now - start} seconds"
# 66.331531265 seconds