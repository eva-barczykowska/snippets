File.open("song.txt", "w") do |file|
  file.puts "This line is added by a ruby code in the file script_to_write_to_the_file.rb"
end


#if the file does not exist, "w" creates it
#if it does exist, "w" replaces content of the file
