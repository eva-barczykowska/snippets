# each will always return the original array
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

puts "Type a word, I will upcase it for you!"
input = gets.chomp
while input != "STOP"
  puts input.upcase
  puts "Type a word, I will upcase it for you!"
  input = gets.chomp
  if input == "STOP"
  break
end
end

#their solution
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
