puts "Hello! What is your name?"
name = gets.chomp

puts " "

puts "Welcome, #{name}."
puts " "
puts "Let's practise adding to 100."
puts " "
puts "You need to do only 4 examples today. Good luck!"

puts " "
praise_words = ["Skvele", "Fantastic", "Very good", "Doing well"]

counter = 4  #I want him to do that many examples. Practise makes perfect! Of course when HE does it, I will increase the counter, hehe.
while counter > 0
  a = 1 + rand(50)
  b = 1 + rand(50)
  def nasobeni(a,b)
    res = a + b
  end
  res = nasobeni(a,b)
  puts "How much is #{a} and #{b}?"
  guess = gets.chomp.to_i
  until guess == res
    puts "Nope, try again"
    puts "How much is #{a} and #{b}?"
    guess = gets.chomp.to_i
    end
  if guess == res
     counter -= 1
       if counter != 0 && counter != 1
         puts "Very good! Now you need to do #{counter} examples."
       elsif counter == 1
         puts praise_words.sample + ", you're almost there! This is the last example!"
       else
         puts "Good news: today's practise if finished, #{name}. GOOD JOB!"
       end
   end
end
