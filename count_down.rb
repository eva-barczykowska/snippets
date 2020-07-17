puts "Enter a number"

num = gets.chomp.to_i

while num >= 0
  puts num
  num -= 1
end

puts "While loop is done!"


puts "Enter a number, this will be until loop"
number = gets.chomp.to_i
until number < 0
  puts number
  number -= 1
end

puts "Until loop is now done as well!"

#now the do/while loop,the code within this loop gets executed once
puts "Now the loop do example"

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != "Yes"
    break
  end
end

#for loops
x = [1, 2, 3, 4, 5, 6]
for i in x
  puts i
end

#conditional within loops
x = 0
while x <= 10
    if x.odd?
      puts x
    end
    x += 1
  end

  #while with loop next
  x = 0
  while x <= 10
    if x == 3
      x += 1
      next
    elsif x.odd?
      puts x
    end
    x += 1
  end

x = 0
while x <= 10
  if x ==7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end
