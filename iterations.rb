my_favourite_places = ["Marriot in Bangalore", "The whole of Sri Lanka", "Benbecula island", "Prague river side"]


my_favourite_places.each { |place| puts place }

x = 1
my_favourite_places.each do |place|
  puts "#{x}. #{place}"
  x = x += 1
end
