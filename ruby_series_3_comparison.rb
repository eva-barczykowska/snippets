class Person



  def age
    @age
  end


  def age=(a)
    @age = a
  end


  def >(other)
    self.age > other.age
  end

end




bob = Person.new
bob.age = 30

jim = Person.new
jim.age = 50

p bob > jim

#really it reads like this
p( bob.>(jim) )
