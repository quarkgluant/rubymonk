def number_shuffle(number)
  # your code here
  tab_digit = number.to_s.split(//)
  tab_res = tab_digit.permutation(tab_digit.length).map { |tab| tab.join.to_i}
  p tab_res
end
number_shuffle(123) # Return: [123, 132, 213, 231, 312, 321]

## 2nde solution
def number_shuffle(number)
  number.to_s.split(//).permutation.map{|tab| tab.join.to_i }
end

## 3e solution
def number_shuffle(number)
  number.to_s.split('').permutation.map(&:join).map(&:to_i)
end


## Solution RubyMonk
def number_shuffle(number)
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  digits = number.to_s.split(//)
  combinations = []
  combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations
  combinations.uniq.sort
end
