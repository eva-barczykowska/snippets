# def reverse_string(str)
#   arr = str.split("")
#   new_string = ""
#  counter = arr.size - 1 #size is 3 but the last element is at the index of 2. At the index of 3 we have nil and that will cause an error (no implicit conversion of nil into String)
#  until counter.negative? # because I need the letter that is at the 0 index as well
#    new_string << arr[counter]
#    counter -= 1
#  end
#  new_string
#  end
#
# print reverse_string("ewa")

# his solution
def string_reverser(str)
  new_arr = []
  reversed_array = str.split("")

  reversed_array.length.times do |letter|
    new_arr << reversed_array.pop   # maybe it's not a good idea to mutate the string in the middle of iteration
  end
  return new_arr
end
p string_reverser("ewa")


# RUN THE CODE AS SOON AS POSSIBLE
