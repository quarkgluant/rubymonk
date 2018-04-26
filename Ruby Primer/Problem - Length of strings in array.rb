def length_finder(input_array)
  res =[]
  input_array.each{|tab| res << tab.length}
  res
end

## mieux !
def length_finder(input_array)
  input_array.map &:length
end
