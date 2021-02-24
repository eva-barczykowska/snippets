# write a method that takes a string and returns a string with vowels removed

def vowel_remover(str)
  new_str = ""
  vowels = "aeoui".split("") #this is an array now
  str = str.split("")        #this is an array now
  counter = 0
  until counter == str.length
    if str[counter] != "a" && str[counter] != "e" && str[counter] != "o" && str[counter] != "u" && str[counter] != "i" then
      new_str << str[counter] # I'm pushing 1 letter onto the new_str, which is a String class, not array
    end
    counter += 1
  end
  p new_str
end


vowel_remover("hello there yellow fellow")
vowel_remover("green")

puts
# another solution
# here we have an array of strings, not just a string

VOWELS = %w(a e i o u)  #this is an array (shortcut to declare an array)
p VOWELS

def remove_vowels(strings)
  strings.map do |string|
    chars = string.split("")
    VOWELS.each {|vowel| chars.delete(vowel)}
    chars.join("")
  end
end

p remove_vowels(["quick brown fox"])
