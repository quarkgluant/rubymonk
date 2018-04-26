def relay(array, data_type)
  array.map &:"to_#{data_type}"
end

## 2nde Solution #
def relay(array, data_type)
  array.map{|item| item.send(:"to_#{data_type}")}
end
