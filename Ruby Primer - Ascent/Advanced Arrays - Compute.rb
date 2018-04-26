def compute(ary)
  return nil if ary.nil?
  ary.map do |element|
     x, y = element
     y = 0 if y.nil?
     x + y
  end
end

## 2nde Solution
# compute([[4, 8], [15, 16]])

def compute(ary)
  return nil if ary.nil?
  ary.map do |x, y|
    y ||= 0
    x + y 
  end
end