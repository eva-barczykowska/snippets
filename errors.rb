#num = 10 / 0 # will cause ZeroDivisionError
lucky_nums = [5, 10, 15]
# lucky_nums["ewa"] # no implicit conversion of String into Integer(TypeError)


# begin
#   num = 10 / 0
# rescue
#   puts "Pamietaj cholero nie dziel przez zero!"
# end


# begin
#   num = 10 / 0
#   lucky_nums["dog"]
# rescue ZeroDivisionError
#   puts "Pamietaj cholero nie dziel przez zero!"
# rescue TypeError
#   puts "Wrong type!"
# end

begin
  #num = 10 / 0
  lucky_nums["dog"]
rescue ZeroDivisionError
  puts "Pamietaj cholero nie dziel przez zero!"
rescue TypeError => e # I can store the error in the variable # NEVER rescue all the errors! this rescues every exception!! see link to read below
  puts e # and I can print that variable
end

# it's a good idea to specify the error you want to catch
# https://www.honeybadger.io/blog/ruby-exception-vs-standarderror-whats-the-difference/
