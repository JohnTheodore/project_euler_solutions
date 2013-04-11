# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

# This sieve will not work well over 10 million.
def eratosthenes_sieve(nth_prime)
  top = nth_prime * 10
  # this is really kludgy, you might have to increase 10 if you want
  # nth primes above 10k. It seems to work fine for all numbers under
  # 10k. I need to read up on prime number theory to find out when this fails.
  sieve = []
  (2..top).each { |i| sieve[i] = i }
  for i in 2 .. Math.sqrt(top)
    next unless sieve[i]
    (i*i).step(top, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact[nth_prime]
end

start = Time.now
# I ran this a few times to know 108000 contains the 10001st prime
# I don't think there is a correlation between the nth prime and the prime size
answer = eratosthenes_sieve(10001)
puts "Found answer: #{answer} in #{Time.now - start} seconds"
# 0.129858832 seconds