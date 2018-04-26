def relay(array, data_type)
  # Write your code here
  array.inject(Array.new) { |tab, data| tab << data.send("to_#{data_type}")}
end

## other solution
def relay(array, data_type)
  # Write your code here
  array.map &:"to_#{data_type}"
end
