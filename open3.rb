#https://www.youtube.com/watch?v=NgleeD72cfM

require "open3"
stdout, stderr, status = Open3.capture3("ls", "-l")
puts stdout
puts stderr
puts status

#puts status.success?

#Open3 takes in command as its first argument
#then it takes a flag
#capture3 method returns 3 values:
#standard output obtained from running a command
#standard error
#status
#to receive these values we've created 3 variables: stdout, stderr and status

#multiple assignment is when we assign values to 3 variables at once
