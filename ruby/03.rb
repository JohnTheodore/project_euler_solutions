# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def highest_prime_factor(num)
  Math.sqrt(num).to_i.downto(1).each do |i|
    return i if ( (i % 2 != 0) && (num % i == 0) && i.prime? )
  end
end

start = Time.now
answer = highest_prime_factor(600851475143)
puts "Found answer: #{answer} in #{Time.now - start} seconds"
# 0.646162751 seconds