def random_select(array, n)
  # your code here
  res = []
  n.times do 
    res << array.fetch(rand(array.length))
  end
  res
end
