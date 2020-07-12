class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @fruit = 0
    @fruit_picked = 0
    puts "Your "  + @tree " "+ "has started growing!"
  end

  def height
    @height = height
    puts "Your tree" + @tree + " is growing taller every day!"
  end

  def age
    puts "Your " + @tree + "is " @age "years old."
    OneYearPasses
  end

  def OneYearPasses
    @age += 3
    @height += 1
  end

when self.age == 99
  self.die
end

case OrangeTree.age
when age > 50
    @number_of_oranges = 50
  when age > 20
    @number_of_oranges = 20
  when age > 5
    @number_of_oranges = 5
  when age =< 5
    @number_of_oranges = 0
  end



def countOrages
  @number_of_oranges
end

def PickOrange
  @number_of_oranges -= 1
  if @number_of_oranges > 0
    puts "The orange was delicious"
  else
    puts "There are no more oranges to pick, come next year!"
  end
end

end
#Make an OrangeTree class. It should have a height method which returns its height, and a oneYearPasses method, which, when called,
#ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some
#number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should,
#and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. And, of course,
#you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange
#(which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are
#no more oranges to pick this year
