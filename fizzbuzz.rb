# write a method that takes 2 arguments, starting number and ending number
# print all the numbers but when a number is divisible by 3 print "Fizz"
# when a number is divisible by 5, print "Buzz"
# when a number is divisible by both print "FizzBuzz"


def fizzbuzz(num1, num2)
nums = (num1..num2).to_a
new_array = []
p nums

nums.each do |num|
  if (num % 3 == 0 && num % 5 == 0)
    new_array.push("FizzBuzz")
  elsif num % 3 == 0
    new_array.push("Fizz")
  elsif num % 5 == 0
    new_array.push("Buzz")
  else
    new_array.push(num)
  end
end
new_array
end



p fizzbuzz(1, 15)
