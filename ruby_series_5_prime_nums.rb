# write a method that takes 2 numbers
# the method should tell you all numbers that are prime between those 2 numbers
# do not use prime class
# VERY IMPORTANT - DEFINITION - what are prime numbers?
# Prime numbers are numbers which are only divisible by 1 and themselves
# here it is important to extract code to a method



# require 'prime'
#
# def prime_nums_between(num1, num2)
#   prime_nums = []
#   my_range = num1..num2
#   p my_range.to_a
#   my_range.to_a.select do |num|
#     if num.prime?
#       prime_nums << num
#     end
#   end
#   prime_nums
# end
#
#
# p prime_nums_between(3,10)

def is_prime?(number)
  (2..(number-1)).each do |divisor|    # this is a range (2..number -1)
    return false if number % divisor == 0
  end
  true # code intentionally, return true, otherwise it would return a truthy value anyway but that's not the point
end

p is_prime?(11)

def prime_nums_between(num1, num2)
  (num1..num2).select do |num|  #select returns an array of numbers that return true to the criteria specified in the block
    is_prime?(num)
  end
end


p prime_nums_between(3,10)
