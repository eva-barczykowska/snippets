#http://www.rubyinside.com/what-rubys-double-pipe-or-equals-really-does-5488.html

a = false
b = 20
a ||= b
puts a
# if a = nil or a = false, when we have a || = b and b = 20, a will get assigned the value of b
#but that's not the whole story, read more from the link above

puts "------------------------------------------"

h = {}

def h.[]=(k, v)
  puts "Setting hash key #{k} with #{v.inspect}"
  super
end

# 1. The standard ||= approach
h[:x] ||= 10
h[:x] ||= 20

# 2. The a = a || b approach
h[:y] = h[:y] || 10
h[:y] = h[:y] || 20

# 3. The a || a = b approach
h[:z] || h[:z] = 10
h[:z] || h[:z] = 20

puts "------------------------------------------"

class MyClass
  attr_reader :val

  def val=(val)
    puts "Setting val to #{val.inspect}"
    @val = val
  end
end

# 1. The standard ||= approach
obj = MyClass.new
obj.val ||= 'a'
obj.val ||= 'b'

# 2. The a = a || b approach
obj = MyClass.new
obj.val = obj.val || 'c'
obj.val = obj.val || 'd'

# 3. The a || a = b approach
obj = MyClass.new
obj.val || obj.val = 'e'
obj.val || obj.val = 'f'



puts "------------------------------------------"

hsh = Hash.new('default')

hsh[:x]         # => 'default'

# 1. The standard ||= approach
hsh[:x] ||= 10
p hsh           # => {}

# 2. The a = a || b approach
hsh[:y] = hsh[:y] || 10
p hsh           # {:y=>"default"}

# 3. The a || a = b approach
hsh[:z] || hsh[:z] = 10
p hsh           # {:y=>"default"}
