# Task
# Sum all the numbers of a given array ( cq. list ),
# except the highest and the lowest element ( by value, not by index! ).
#
# The highest or lowest element respectively is a single element at each edge,
# even if there are more than one with the same value.
#
# Mind the input validation.
#
# Example
# { 6, 2, 1, 8, 10 } => 16
# { 1, 1, 11, 2, 3 } => 6
# Input validation
# If an empty value ( null, None, Nothing etc. ) is given instead of an array,
# or the given array is an empty list or a list with only 1 element, return 0.

def sum_array(arr)
  return 0 if !arr
  return 0 if arr.empty?
  return 0 if arr.size < 3
  arr = arr.sort
  arr[1...-1].sum
end

p sum_array(nil) == 0
p sum_array([]) == 0
p sum_array([3]) == 0
p sum_array([-3]) == 0
p sum_array([ 3, 5]) == 0
p sum_array([-3, -5]) == 0
p sum_array([6, 2, 1, 8, 10]) == 16
p sum_array([6, 0, 1, 10, 10]) == 17
p sum_array([-6, -20, -1, -10, -12]) == -28
p sum_array([-6, 20, -1, 10, -12]) == 3

puts ""

def sum_array(arr)
  return 0 if !arr || arr.size < 3
  arr.inject(:+) - arr.max - arr.min
end

p sum_array(nil) == 0
p sum_array([]) == 0
p sum_array([3]) == 0
p sum_array([-3]) == 0
p sum_array([ 3, 5]) == 0
p sum_array([-3, -5]) == 0
p sum_array([6, 2, 1, 8, 10]) == 16
p sum_array([6, 0, 1, 10, 10]) == 17
p sum_array([-6, -20, -1, -10, -12]) == -28
p sum_array([-6, 20, -1, 10, -12]) == 3
