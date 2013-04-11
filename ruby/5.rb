# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def factor_pool(n)
  pool = []
  (2..n).each do |i|
    pf = prime_factors(i)
    pf.each do |j|
      (pf.count(j).times { pool << j }) if !pool.include?(j)
      if pool.include?(j) && (pf.count(j) > pool.count(j))
        pool.delete(j)
        pf.count(j).times { pool << j }
      end
    end
  end
  pool
end

def prime_factors(n)
  return [] if n == 1
  factor = (2..n).find {|x| n % x == 0} 
  [factor] + prime_factors(n / factor) 
end

start = Time.now
answer = factor_pool(20).inject(:*)
puts "Found answer: #{answer} in #{Time.now - start} seconds"
# 0.000366807 seconds