# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# def repeat(str, times)
# counter = 0
#  while counter < times
#    puts str + " "
#    counter += 1
#  end
# end
#
#
# repeat('Hello', 3)



# def repeat(str, num)
#   i = 0
#   while i < num
#     puts str
#     i += 1
#  end
# end
#
#
# repeat('Hello', 3)


# def repeat(string, number)
#   puts string
# end
# repeat('Hello', 3)


def repeat(str,int)
  while int.integer? && int > 0
    puts str
    int -= 1
  end
end

repeat('Hello',5)
