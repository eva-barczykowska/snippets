#simpler example
def doubler(start)
  puts start * 2
end

doubler(2)
doubler(4)
doubler(6)

puts " "

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)

puts " "

#another example
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number -2)
  end
end

puts fibonacci(6)

puts " "

#task, count down from 10 to 0 using recursion
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number - 1)
  end
end

count_to_zero(10)
