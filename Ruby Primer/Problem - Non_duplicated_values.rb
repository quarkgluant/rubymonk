def non_duplicated_values(values)
  # Write your code here
  sortie = []
  res = Hash.new(0)
  values.each do | nombre|
    res["#{nombre}"] += 1
  end
  #values.inject(Hash.new(0)) {|res, val| res[val] += 1}
  res.each {|key, value| sortie << key.to_i if value == 1}
  sortie
end

non_duplicated_values([1,2,2,3,3,4,5])
#non_duplicated_values(['A','B','C','D','D','E','E'])