# https://medium.com/@kristenfletcherwilde/getting-started-with-kernel-format-7c7645266fed
#
# Practice
# Try to come up with a format string for each of these examples, then scroll down for the answers.
# I’ve used variables rather than values, as I would when writing a program.

# Shorten a name to just three characters and preface it with a space.
name = "Lisa"
# p format(" %.2s", name)

# 2. Round an amount of money to dollars and cents. The resulting string
# should be the same length whether the total is positive or negative.

total = 37.94555500
p format("$%.2f", total) #=> "$ 37.94"

# 3. Display a large number such as 123_456 in exponential notation with
# two digits following the decimal point and two leading zeroes.

num = 123_456
p format("00%.2e", num) # => “001.23e+05”


# 4. Display clock time.

hours = 3
minutes = 5

p format(“%02d:%02d”, hours, minutes)
#

# Answers:
#
# “%4.3s”
# “$% .2f”
# “%010.2e”
# “%02d:%02d”
