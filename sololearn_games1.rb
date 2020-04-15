class Array #can I call my class Array? Ruby already has a class called Array so does that mean I'm overrriding it?
  def fun
    myhash = {:one => method(:reverse!), :two => method(:pop)}
    3.times do |key, value|   #key is :one, value is method(:reverse!), then key is :two, value is method(:pop)
      myhash.each  do |key, value|
        myhash[key].call  # so I am calling the method method(:reverse!) on the key :one and subsequently method :pop on the key :two
      end                 # but what does that have to do with anything?
    end
  end
end

arr = [1, 2, 3, 4, 5]
arr.fun               #I am calling fun on arr. But don't I need a hash istead of what I have - an array? If I print it, the output is 3. Where did that come from?! 
print arr[0] - arr[-1]
