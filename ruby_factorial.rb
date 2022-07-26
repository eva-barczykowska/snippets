class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

400.fact
