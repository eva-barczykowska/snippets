file = File.new("song.txt") #the object created after the = is called "file handle" so a new object(file handle) is created and assigned to a variable
puts file.gets
file.close  #it's important to close files after you've opened them
