# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


# vehicles.cycle(vehicles.size)


def count_occurrences(arr)
  occurrences = Hash.new(0)
  arr.each do |element|
    unless occurrences.include?(element)
      occurrences.store(element.to_sym, 1)
    end
  end
  # arr.each do |elem|
  #   if occurrences.key(element.to_sym)
  #     occurrences[:element] += 1
  #   end
  # end
    print occurrences
  end




count_occurrences(vehicles)
