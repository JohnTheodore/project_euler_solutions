# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

def eratosthenes_sieve(top)
  sieve = []
  (2..top).each { |i| sieve[i] = i }
  for i in 2 .. Math.sqrt(top)
    next unless sieve[i]
    (i*i).step(top, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact
end

start = Time.now
answer = eratosthenes_sieve(2000000)
puts "Found answer: #{answer.inject(:+)} in #{Time.now - start} seconds"
# 3.116057426 seconds (This is respectable considering 2 million is the param)