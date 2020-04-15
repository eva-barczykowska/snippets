str = "AWk9440ksooeiQQczlk iiiiII czm".downcase!
puts
arr = str.split("")

vowels = 0

arr.each do |char|
  if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
    vowels += 1
  end
end

puts vowels

puts


#2 out of 6 test cases on SoloLearn are failing
