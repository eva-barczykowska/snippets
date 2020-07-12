# given a number "n", return an array w/all its divisors

#12 => [1, 2, 3, 4, 6, 12]

divisors = (1..12).select { |n| 12 % n == 0 }
puts divisors

puts

divisors = (1..8).select { |n| 8 % n == 0 }
puts divisors

puts

divisors = (1..7).select { |n| 7 % n == 0 }
puts divisors

puts

divisors = (1..11).select { |n| 11 % n == 0 }
puts divisors

puts

def find_divisors(n)
  (1..n).select{ |i| n % i == 0 }
end

find_divisors(11)
