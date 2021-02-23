PRODUCTS = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
  { name: "Thinkpad x250", price: 979 },
  { name: "Thinkpad x230", price: 300 },
  { name: "Thinkpad x230", price: 230 },
  { name: "Thinkpad x230", price: 250 },
  { name: "Thinkpad x240", price: 700 },
  { name: "MacBook Leopard", price: 300 },
  { name: "MacBook Air", price: 700 },
  { name: "MacBook Pro", price: 600 },
  { name: "MacBook", price: 1449 },
  { name: "Dell Lattitude", price: 200 },
  { name: "Dell Lattitude", price: 650 },
  { name: "Dell Inspiron", price: 300 },
  { name: "Dell Inspiron", price: 450 }
]

#array of hashes


query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: "dell"
}
# puts PRODUCTS
# (price_min..price_max).include?(price)


# APPROACH
# 1. print out something in the method
# 2. print out the products
# 3. print out each element in PRODUCTS
# 4. print out elements that are less than 350 in price
# 5. start to incorporate the query criteria, only max price 250
# 6. add in 1 more criteria if you have more, like for example location in the products hash
def search(query)
  output_array = PRODUCTS.select do |element|
    (query[:price_min]..query[:price_max]).include?(element[:price]) && (element[:name]).downcase.include?(query[:q]) # element[:name] because it's a hash and :name is a symbol
  end
  p output_array
end

search(query)
#[{ name: "Thinkpad x220", price: 250 }]

search(query2)
# [{ name: "Del Inspiron", price: 300 }
# { name: "Del Inspiron", price: 450 }]
