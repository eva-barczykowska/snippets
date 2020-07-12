prime = [2, 3, 5, 7,11]
p = (1...5).bsearch {|i| prime[i] >= 3} #this prints 1st prime from those in the brackets so 1
puts prime[p] #this gives 3 because prime[1] = 3
puts prime[p%2] # so 3 % 2 should be 1 so prime[1] = 3
