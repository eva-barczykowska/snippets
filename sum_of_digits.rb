# Write a method that takes one argument, a positive integer, and returns the sum of its digits.


# def sum(digits)
#   digits = digits.to_s.split("")
#   res = digits.map { |x| x.to_i }
#   res = res.sum
#   print res
# end
#
#
# sum(23)

puts ""
puts "==="


def sum(int)
  sum = int.digits.sum
end


# sum(23)

puts sum(23)
puts sum(496)
puts sum(123_456_789)
