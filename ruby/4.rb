# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def highest_palindrome
  bucket = []
  999.downto(900) do |i|
    999.downto(900) do |j|
    prod = i * j
    (bucket << prod) if (prod.to_s == prod.to_s.reverse)
    end
  end
  return bucket.max
end

start = Time.now
answer = highest_palindrome
puts "Found answer: #{answer} in #{Time.now - start} seconds"
# 0.020118692 seconds