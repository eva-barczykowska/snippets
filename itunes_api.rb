# python code that I want translated into Ruby
# import json
# import requests
# import sys
#
# if len(sys.argv) != 2:
#     sys.exit()
#

# response = requests.get(f"https://itunes.apple.com/search?entity=song&limit=50&term=" + sys.argv[1])
#
# object = response.json()
# for result in object["results"]:
#     print(result["trackName"])

require 'net/http'
require 'uri'
require 'json'

if ARGV.length != 1
    exit
end


uri = URI("https://itunes.apple.com/search?entity=song&limit=50&term=" + ARGV[0])
response = Net::HTTP.get(uri)
object = JSON.parse(response)

# object["results"].each do |result|
#     puts result["trackName"]
#     puts "---"
# end

unique_songs = []
object["results"].each do |result|
    unique_songs << result["trackName"] unless unique_songs.include?(result["trackName"])
end

puts unique_songs

