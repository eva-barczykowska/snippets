print(false || true)

puts

print(false == false || true)

puts

print(false == (false || true)) #why is this false? If expression from the () is evaluated first, then we have false == false so it should print true

puts

print((false == false) || true)
