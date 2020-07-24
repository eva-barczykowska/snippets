require 'net/http'

puts Net::HTTP.get("www.google.com", "/index.html") #sending a request to a web server!


uri = URI('http://www.t-mobile.cz/index.html')
res = Net::HTTP.get_response(uri)

puts res.code
puts res.message
puts res.class.name
