require "colorize"

puts "How many kaleidoscopes you'd like to buy?"
quantity = gets.chomp.to_f
puts "Quantity: #{quantity}"

price = 5.00
puts "Price: #{price}"

total = quantity * price
total = total.round(2)
puts "Total: #{total}"

discount = total * 0.10
sprintf('%.2f', discount)
puts discount

tax = (total - discount) * 0.07 #tax is calculated on the discounted amount, not on the amount without discount, this would be not fair!!!!
tax = tax.round(2)
puts "Tax: #{tax}"



if quantity == 1
  total = price + (price * 0.07)
else
  total = (total - discount) + tax
end

puts total.round(2)
