# ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything
# but exactly 4 digits or exactly 6 digits.
#
# If the function is passed a valid PIN string, return true, else return false.
# "1234"   -->  true
# "12345"  -->  false
# "a234"   -->  false

def validate_pin(pin)
  if pin.empty?
    return false
  elsif pin.size > 6
    return false
  elsif pin.size > 4 && pin.size < 6
    return false
  elsif pin.size < 4
    return false
  else
    pin.split("").all?{ |str| str.to_i.to_s == str }
  end
end

p validate_pin("") == false
p validate_pin("1") == false
p validate_pin("1111") == true
p validate_pin("123456") == true
p validate_pin("1234567890") == false
validate_pin("12") == false

puts ""
# other solutions
def validate_pin(pin)
  (pin.length == 4 || pin.length == 6) && pin.count("0-9") == pin.length
end
p validate_pin("") == false
p validate_pin("1") == false
p validate_pin("1111") == true
p validate_pin("123456") == true
p validate_pin("1234567890") == false
validate_pin("12") == false

puts ""
def validate_pin(pin)
  [4, 6].include?(pin.size) && pin.delete("0-9") == ""
end

def validate_pin(pin)
  (pin.length == 4 || pin.length == 6) && pin.count("0-9") == pin.length
end
p validate_pin("") == false
p validate_pin("1") == false
p validate_pin("1111") == true
p validate_pin("123456") == true
p validate_pin("1234567890") == false
validate_pin("12") == false
