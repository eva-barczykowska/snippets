require 'benchmark'
require 'net/http'

url = URI("https://itunes.apple.com/search?entity=song&limit=50&term=coldplay")

# we will try 10 times and calculate the average and then do the same in python and compare
iterations = 100

total_time = Benchmark.measure do
  iterations.times do
    Net::HTTP.get(url)
  end
end

average_time = total_time.real / iterations
puts "Average time for #{iterations} requests: #{average_time.round(4)} seconds"

# Average time per request: 0.0629 seconds in python - 10 requests
# Average time for 10 requests: 0.0702 seconds in Ruby - 10 requests

# Average time per request: 0.0652 seconds - python - 100 requests
# Average time for 100 requests: 0.0711 seconds - Ruby - 100 requests

