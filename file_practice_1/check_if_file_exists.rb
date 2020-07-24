if File.exists?("song.txt")
  puts "Whew, file is there!"
end

#exists? is useful for all kinds of things
#like verifying that a log exists before trying to write to it
#or checking that a file hasn't been created so that we don't overwrite it
