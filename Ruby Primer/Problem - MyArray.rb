class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    # your code here
    @array.inject(initial_value) do |sum, val|
      sum += yield val if block_given?
      sum += val unless block_given?
      p "sum = #{sum} val = #{val}"
      sum
    end
  end
end

my_array = MyArray.new([1, 2, 3]) 
my_array.sum # gives 6 
my_array.sum(10) # gives 16 
my_array.sum(0) {|n| n ** 2 } # gives 14

## 2nde solution
class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given?
      @array.inject(initial_value) do |sum, x|
        sum +=  yield x
      end
    else
      @array.inject(initial_value){|sum, x| sum + x }
    end
    
  end
end

## Solution Rubymonk
class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    return array.inject(:+) + initial_value unless block_given?
    sum = initial_value
    array.each {|n| sum += yield(n) }
    sum
  end
end
