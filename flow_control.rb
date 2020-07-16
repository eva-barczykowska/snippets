a = 5
answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5 nor 6"
  end
puts answer


a = 5

case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "you've entered number 3"
elsif a == 4
  puts "you've entered number 4"
else
  puts "you've entered neither 3 nor 4"
end

if a == 3 then puts "a is 3" end

  #also - just 1 line
  puts "a is 3" if a == 3

  #unless
  puts "x is NOT 3" unless x == 3
