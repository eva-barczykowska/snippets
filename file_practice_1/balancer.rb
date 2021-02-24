# write a method that takes a string and returns a boolean indicating whether this string has a balanced
# set of parenthesis

# balancer("hi") => true
# balancer("(hi") => false
# balancer("(hi)") => true

# Bonus
# balancer(")hi(") => false


# def balancer(str)
#  return false unless str.count("(") == str.count(")")
#  #detect order is also good
#  paren_count = 0
#  failure = false
#
#  str.split("").each do |char|
#    paren_count += 1 if char == "("
#    paren_count -= 1 if char == ")"
#
#    if paren_count < 0
#      failure = true
#      break
#    end
#  end
#  !failure
# end
#
#
# p balancer("hi")
# p balancer("(hi")
# p balancer("(hi)")
# p balancer(")hi(") #this should be false

def balancer(str)
 return false unless str.count("(") == str.count(")")
 #detect order is also good
 paren_count = 0

 str.split("").each do |char|
   paren_count += 1 if char == "("
   paren_count -= 1 if char == ")"

   return false if paren_count < 0
 end
 true
end


p balancer("hi") #remember to ignore first ( and last ) while counting
p balancer("(hi")
p balancer("(hi)")
p balancer(")hi(") #this should be false #How come paren_count is -1 here - first time it hits ) it becomes -1
