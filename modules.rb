module MartialArts
  def kungfu
    puts "I know kung-fu!!!"
  end
end




class Person
  include MartialArts
end


class Panda
  include MartialArts
end


ewa = Person.new
bear = Panda.new


ewa.kungfu
bear.kungfu
