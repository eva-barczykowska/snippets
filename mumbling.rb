# PEDAC
#
# Problem
# -we get a string and every letter of that string has to be printed the incremental number of times
# -so 1st letter gets printed once
# -second letter gets printed twice
# -third letter gets printed 3 times
# -4th letter gets printed 4 times, etc.
#
# -so we have groups of letters
# -those groups are divided by '-' character
#
# -the first letter of each group of letters is capitalized, eg. "A-Bb-Ccc-Dddd"
# -the rest of those letters are lower case letters, e.g. "A-Bb-Ccc-Dddd"
#
# Examples
# p accum("abcd") #-> "A-Bb-Ccc-Dddd"
# p accum("RqaEzty") #-> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
# p accum("cwAt") #-> "C-Ww-Aaa-Tttt"
#
# Data Structures
# input: String
# output: String
# Algorithm
# -split the String into an array
# -initialize result variable to an empty array
# -look at every letter in the given argument
# -add the first letter to the result array, make that letter capital
# -add all the other letters of the group (if the string's size is more than 1 character)
# -add a '-' character to separate the groups
#
# -return the result, remove last character, which will be '-'
# -join the array in order to get a String
# Code


def accum(s)
  result = []
  s = s.split("")
  s.each_with_index do |letter, index|
   result << s[index].capitalize
   result << s[index].downcase * index
   result << '-'
 end
 result.join.chop
end

p accum("abcd") #-> "A-Bb-Ccc-Dddd"
p accum("RqaEzty") #-> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt") #-> "C-Ww-Aaa-Tttt"
p accum("ZpglnRxqenU")

p accum("abcd") == "A-Bb-Ccc-Dddd"
p accum("RqaEzty") == "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt") == "C-Ww-Aaa-Tttt"

# Algorithm for the other solution
# convert the String to the Array
# look at the char and its index
# transform this array in the following way:
# -add capital letter plus as many lower case letters as the number that represents index
# -this will give me ['A', 'Bb','Ccc','Dddd']
# -this is still an array, join it by '-'
# -return the result

def accum(s)
  s.chars.each_with_index.map{ |c, i| c.upcase + c.downcase * i }.join('-')
end
