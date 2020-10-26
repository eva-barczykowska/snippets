require 'prime'
require 'pry'
def is_prime?(num)
  num.prime?
  binding.pry
end


(1..5).each do |n|
  p is_prime?(n)
end



# prime is not a part of core Ruby API but it's from Standard Library, which we need to require
