#https://github.com/pvande/differ
require "differ"


@original = "Epic lolcat fail!"
@current  = "Epic wolfman fail!"

#.diff_by_line
#.diff_by_word
#.diff_by_char -- some inbuilt methods

@diff = Differ.diff_by_line(@current, @original)
  # => "{"Epic lolcat fail!" >> "Epic wolfman fail!"}"
print @diff
puts

@diff = Differ.diff_by_word(@current, @original)
  # => "Epic {"lolcat" >> "wolfman"} fail!"
print @diff
puts

@diff = Differ.diff_by_char(@current, @original)
  # => "Epic {+"wo"}l{-"olcat "}f{+"m"}a{+"n fa"}il!"
print @diff
puts
puts

  #or call #diff directly and supply your own boundary string!

  @diff = Differ.diff(@current, @original)  # implicitly by line!
  # => "{"Epic lolcat fail!" >> "Epic wolfman fail!"}"
  print @diff
  puts
@diff = Differ.diff(@current, @original, 'i')
  # => "Epi{"c lolcat fa" >> "c wolfman fa"}il"
  print @diff
