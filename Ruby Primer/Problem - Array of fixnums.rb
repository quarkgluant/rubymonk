def array_of_fixnums?(array)
  array.all?{|item| item.is_a?(Fixnum)}
end

## autre solution
def array_of_fixnums?(array)
  # Write your code here
  array.all?{ |elem| elem.class == Fixnum }
end
