# A square of squares
# You like building blocks. You especially like building blocks that are squares.
# And what you even like more, is to arrange them into a square of square building blocks!
#
# However, sometimes, you can't arrange them into a square. Instead, you end up
# with an ordinary rectangle! Those blasted things! If you just had a way to know,
# whether you're currently working in vain… Wait! That's it! You just have to check
# if your number of building blocks is a perfect square.
#
# Task
# Given an integral number, determine if it's a square number:
#
# In mathematics, a square number or perfect square is an integer that is
# the square of an integer; in other words, it is the product of some integer with itself.
#
# The tests will always use some integral number, so don't worry about that
# in dynamic typed languages.

# x has to be greated than -1 so that it's possible for the square to be real:)

# include Math

def is_square?(x)
  if x > -1 && (Math.sqrt(x) % 1).zero?
    p "#{x} is a perfect square (#{Math.sqrt(x).to_i} * #{Math.sqrt(x).to_i})"
    return true
  else
    p "#{x} is a not perfect square"
    return false
  end
end

p is_square?(-1) #== false, "-1 is not a perfect square"
p is_square?(0) #== true, "0 is a perfect square (0 * 0)"
p is_square?(3) #== false, "3 is not a perfect square"
p is_square?(4) #== true, "4 is a perfect square (2 * 2)"
p is_square?(25) #== true, "25 is a perfect square (5 * 5)"
p is_square?(26) #== false, "26 is not a perfect square"
