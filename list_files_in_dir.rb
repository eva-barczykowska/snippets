require 'fileutils'

filenames = Dir.entries(".")
puts filenames
#Dir.mkdir("testing1")

unless Dir.exist?("this_exists")
  Dir.mkdir("this_didnot_exist_and_now_it_does")
end

FileUtils.mkdir_p("/tmp/testing/a/b")

Dir.chdir("/tmp") { Dir.entries(".") }
# With a block, the current directory changes only for the code inside the block
# Without a block, it changes for all the code after the method call

Dir.glob("*.rb") # to find ruby files in the current directory
Dir.glob("*.txt") # to find text files in the current directory
Dir.glob("*.pdf") # to find pdf files in the current directory

Dir.glob("**/*.rb") # find files inside all folders



# https://www.rubyguides.com/2020/02/ruby-dir/#:~:text=Because%20all%20directory%20operations%20are,chdir%20method%20to%20do%20this.
