#'https://rubygems.org/'# Financially, you started the year with a clean slate.
# require 'byebug'
#
# balance = 0
#
# # Here's what you earned and spent during the first three months.
#
# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }
#
# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }
#
# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }
#
# # Let's see how much you've got now...
#
# def calculate_balance(month)
#   plus  = month[:income].sum
#   minus = month[:expenses].sum
# plus - minus
# end
# byebug
# [january, february, march].each do |month|
#   balance = calculate_balance(month)
# end
#
# puts balance

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  # break if i == colors.length -  1
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end
