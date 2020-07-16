def greeting(name)
 "Hello, #{name}."
end

print greeting("Ewa")



#their solution
def greeting(name)
  "Hello, " + name + ". How are you doing?"
end

puts greeting("Bob")

def multiply(num1, num2)
  num1 * num2
end

puts multiply(2,5)

p "Ewa"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
