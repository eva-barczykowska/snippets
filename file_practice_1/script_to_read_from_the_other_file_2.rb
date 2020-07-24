File.open("song.txt") do |file|
  puts file.gets
end

#if we use open within a block then Ruby will automatically close the file, which is a bonus!
