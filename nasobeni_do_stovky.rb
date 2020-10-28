puts "Hello! What is your name?"
name = gets.chomp
puts " "
puts "Welcome, #{name}! Let's practise adding to 100."
puts " "
counter = 3
puts "You need to do only #{counter} examples today. Good luck!"
puts " "
praise_words = ["Awesome", "Fantastic", "Very good", "Doing well", "Muy bien", "Super", "Great job!", "You're on a roll!", "Aby tak dalej!"]

counter = 3  #I want him to do that many examples. Practise makes perfect! Of course when HE does it, I will increase the counter, hehe.
while counter > 0
  a = 1 + rand(50)
  b = 1 + rand(50)
  def add(a,b)
    res = a + b
  end
  res = add(a,b)
  puts "How much is #{a} and #{b}?"
  guess = gets.chomp.to_i
  until guess == res   # this is where my loop starts
    puts "Nope, try again"
    puts "How much is #{a} and #{b}?"
    guess = gets.chomp.to_i
    end
  if guess == res # this is conditional flow
     counter -= 1
       if counter != 0 && counter != 1
         puts "Very good! #{counter} examples are left."
       elsif counter == 1
         puts praise_words.sample + ", you're almost there! This is the last example!"
       else
         puts "Good news: today's practise is finished, #{name}. GOOD JOB!"
       end
   end
end
