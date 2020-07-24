contents = Dir.glob("**/*.txt")
contents.each do |entry|
  puts entry
end

#** means search recursively
#* means search anything
