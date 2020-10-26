class Person
  # attr_accessor :name
  #
  # def name=(new_name)  # this is the method we call on line 13!
  # end
                       # calling it like this bob.name is synctactical sugar
                       # so it's supposed to mean that it's easier
end



bob = Person.new
bob.name = 'bob' # we are invoking a method = look at def name

p bob.name




class Dog
  attr_accessor :name
end

kundel_1 = Dog.new # kundel_1 is a LOCAL VARIABLE, we're creating new object of the Dob class
kundel_1.name= ("Puszek") # we are invoking a method name= look at def name
                          # try removing the def name and see what error you get
                          # undefined method `name=' for #<Person:0x00007ffa5889ddc0> (NoMethodError)
kundel_2 = Dog.new
kundel_2.name = "Cywil"


p kundel_1.name
p kundel_2.name


class Cat
  attr_accessor :name, :age, :bread
end

tiger = Cat.new
puma = Cat.new
cheetah = Cat.new
lion = Cat.new

tiger.name = "African Tiger"
puma.name = "Black Puma"
cheetah.name = "The Fastest Cheetah Renee"
lion.name = "Lion King"

p tiger.name
p puma.name
p cheetah.name
p lion.name
