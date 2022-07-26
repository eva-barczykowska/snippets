# what is the output of this code?
hash = Hash.new()
hash[9] = "a"
hash[8] = "b"
hash[7] = "c"
hash[6] = "d"
print hash.count()
hash.delete(9)
print hash.count()

puts ""
puts "==="

x = [1, 2, 3]
puts x.drop( 1<<1 )


puts ""
puts "==="

s = "nor"
s.clear
n = s.insert(0, 'xor')
puts s
