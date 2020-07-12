puts "Hello! What is your name?" #welcoming user
name = gets.chomp
puts "Welcome #{name}. Let's practise adding to 100. You need to do only 4 examples today. Good luck!"

counter = 0   #starting the counter
while counter < 5
  puts "This is example number #{counter}"
a = 1 + rand(50)
b = 1 + rand(50)


def nasobeni(a,b)  #defining method for adding 2 numbers
  res = a + b
end

res = nasobeni(a,b) #calling the method

puts "How much is #{a} and #{b}?"
guess = gets.chomp.to_i
if guess == res
  puts "Well done!"
  counter += 1
  break
else
  puts "That's not right, try again..."
end



correct = %w[well done super fantastic skvele]
correct = push("you are the best")
