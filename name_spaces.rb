module Building
  KEY = "This is a key to my building where I live in Prague!"
end

module Piano
  KEY = "This is the key for the musical note E, hit it!"
end

puts Building::KEY
puts Piano::KEY

friends = Hash.new
friends.store(sam, 99912222)
puts friends
