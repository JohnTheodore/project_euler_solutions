# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def nice_square(num)
  (1..500).each do |i|
    (1..500).each do |j|
      sum = Math.sqrt(i**2 + j**2)
      (return [i, j, sum]) if (((i + j + sum) == num) && (i**2 + j**2 == sum**2))
    end
  end
end

start = Time.now
answer = nice_square(1000)
puts "Found answer: #{answer.inject(:*)} using #{answer} in #{Time.now - start} seconds"
# 0.274545108 seconds