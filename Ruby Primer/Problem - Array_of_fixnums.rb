def array_of_fixnums?(array)
  # Write your code here
  array.all? { |val| val.is_a?(Fixnum) }
end