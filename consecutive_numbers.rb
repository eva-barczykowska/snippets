# Your task is to find the first element of an array that is not consecutive.
#
# By not consecutive we mean not exactly 1 larger than the previous element of the array.
#
# E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.
#
# If the whole array is consecutive then return nil.
#
# The array will always have at least 2 elements and all elements will be numbers.
# The numbers will also all be unique and in ascending order.
# The numbers could be positive or negative and the first non-consecutive could be either too!
#
# If you like this Kata, maybe try this one next: https://www.codewars.com/kata/represent-array-of-numbers-as-ranges
#
# 1 Can you write a solution that will return nil for both [] and [ x ] though?
# (This is an empty array and one with a single number and is not tested for, but you can write your own example test. )

# PEDAC
# -look at the second number in the array, starting with the first one
# - now look at the next element and see if it is bigger by 1
# -if not,return it
# else return nil

  def first_non_consecutive(arr)
    if arr.empty?
      return arr
    elsif arr.size == 1
      return arr
    else
      counter = 1
      loop do
        if arr[counter] != arr[counter - 1].next
          return arr[counter]
        end
        counter += 1
        break if counter == arr.size
      end
    end
    return nil
  end

p first_non_consecutive([]) == []
p first_non_consecutive([44]) == [44]
p first_non_consecutive([1,2,3,4,6,7,8]) == 6
p first_non_consecutive([1,2,3,4,5,6,7,8]) == nil
p first_non_consecutive([4,6,7,8,9,11]) == 6
p first_non_consecutive([4,5,6,7,8,9,11]) == 11
p first_non_consecutive([31,32]) == nil
p first_non_consecutive([-3,-2,0,1]) == 0
p first_non_consecutive([-5,-4,-3,-1]) == -1

puts ""
# other solutions
def first_non_consecutive(arr)
  arr.find.with_index{|x, i| x - arr[i-1] > 1}
end

p first_non_consecutive([]) == [] #he didn't account for the empty array or array with 1 element
p first_non_consecutive([44]) == [44]
p first_non_consecutive([1,2,3,4,6,7,8]) == 6
p first_non_consecutive([1,2,3,4,5,6,7,8]) == nil
p first_non_consecutive([4,6,7,8,9,11]) == 6
p first_non_consecutive([4,5,6,7,8,9,11]) == 11
p first_non_consecutive([31,32]) == nil
p first_non_consecutive([-3,-2,0,1]) == 0
p first_non_consecutive([-5,-4,-3,-1]) == -1


puts ""

def first_non_consecutive(arr)
  arr.find.with_index {|e,i| e > arr[i-1] + 1 }
end

p first_non_consecutive([]) == [] #he didn't account for the empty array or array with 1 element
p first_non_consecutive([44]) == [44]
p first_non_consecutive([1,2,3,4,6,7,8]) == 6
p first_non_consecutive([1,2,3,4,5,6,7,8]) == nil
p first_non_consecutive([4,6,7,8,9,11]) == 6
p first_non_consecutive([4,5,6,7,8,9,11]) == 11
p first_non_consecutive([31,32]) == nil
p first_non_consecutive([-3,-2,0,1]) == 0
p first_non_consecutive([-5,-4,-3,-1]) == -1
