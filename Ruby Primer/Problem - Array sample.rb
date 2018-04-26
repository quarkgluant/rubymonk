def random_select(array, n)
  # your code here
  res = []
  n.times{ res << array[rand(array.length)] }
  res
end
