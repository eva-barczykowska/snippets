#count

my_numbers = [1, 2, 3, 4, 1, 3, 5, 6, 10, 99, 1, 5, 100]

p my_numbers.count

p my_numbers.count(1)
p my_numbers.count(5)
p my_numbers.count(3)

p my_numbers.count{ |num| num > 99 }
p my_numbers.count{ |num| num < 100 }
p my_numbers.count{ |num| num > 100 }


p my_numbers.count{ |num| num >= 100}


p my_strings = %w( ewa cledwyn cailan)
p my_strings.count("ewa")
# p my_strings.count("ewa", "cledwyn") #good example of an error, wrong number of arguments
p my_strings.count
p my_strings.count{ |str| str.size > 9 }
p my_strings.count{ |str| str.size > 4 }
p my_strings.count{ |str| str.size == 6 }

puts ""
puts "Now reduce or inject"

p my_numbers = [ 2, 4, 3, 50, 11, 30 ]
p my_numbers.reduce(0){ |sum, num| sum + num }

=begin
What the above will essentially do is to take the argument to the method and consider it our sum.
So our initial sum is 0.
Then it will take the first element from the array, an Integer `2` and add it to the sum (which is `0` at this point). Now our sum is `2`.
Subsequenly take the 2nd element from the array, an Integer `4` and add it to the sum (which is `2` at this point). Now our sum is `6`.
Then it will take the 3rd element from the array, an Integer `3`and add it to the sum (which is `6` at this point). Now our sum is `9`.
Then it will take the 4th element from the array, an integer `50` and add it to the sum (which is `9` at this point). Now our sum is `59`.
It will continue taking the subsequent numbers, until all numbers from the array have been exhausted. At which point, it will return the sum.
The sum will be `100`.

The argument to the method, which was `0` could be different, for example we could start summing from 100, in which case the sum will be `200`. 
=end

p my_numbers.reduce(100){ |sum, num| sum + num }
