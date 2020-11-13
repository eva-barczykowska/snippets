str = "Pseudopseudohypoparathyroidism"
puts ( str.split("").select{ |x| x == "a" || x == "i" || x == "u" || x == "o" || x == "e"}.size )

# 2 вариант: option 2:
str = "Pseudopseudohypoparathyroidism"
puts str.scan(/[aiuoe]/).size

# 3 вариант: option 3:
str = "Pseudopseudohypoparathyroidism"
puts str.count 'aiuoe'
