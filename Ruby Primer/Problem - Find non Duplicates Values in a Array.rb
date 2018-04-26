def non_duplicated_values(values)
  hach = Hash.new(0)
  values.each{|item| hach[item] += 1}.delete_if{|item| hach[item] > 1}
end

## Solution RubyMonk
def non_duplicated_values(values)
  values.find_all { |x| values.count(x) == 1 }
end

## Autre solution
def non_duplicated_values(values)
  # Write your code here
  how = values.inject(Hash.new(0)){ |freq, nb| freq[nb] += 1; freq }
  values.select{|nb| how[nb] == 1 }
end
