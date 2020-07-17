def upcase(str)
  if str.length > 10
    str.upcase
  else
    str
  end
end


puts upcase("barczykowska")

puts "Please enter a number between 0 and 100"
num = gets.chomp.to_i
if num >= 0 && num < 51
  puts "Your number is between 0 and 50"
elsif num > 50 && num < 101
  puts "Your number is between 50 and 100"
else
  puts "Your number is NOT in the 0-100 range"
end
