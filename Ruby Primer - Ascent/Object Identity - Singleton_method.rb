class Object
  def singleton_method?(method)
    # your code here
    p "self.class = #{self.class}"
    p "self.singleton_class = #{self.singleton_class}"
    #  foo.metaclass.instance_methods.include? :shout
    test_metaclass = self.singleton_class.instance_methods.include? method
    test_class = self.class.instance_methods.include? method
    p "self.singleton_class.instance_methods.include? method = #{test_metaclass}"
    p "self.class.instance_methods.include? method = #{test_class}"
    #self.class == method.singleton_class
    not test_class && test_metaclass
  end
end

foo = "A string"
def foo.shout
  puts foo.upcase
end

# shout is a singleton method.
p foo.singleton_method?(:shout)

## 2nde solution #
class Object
  def singleton_method?(method)
    self.singleton_class.instance_methods(false).include?(method)
  end
end

foo = "A string"
def foo.shout
  puts foo.upcase
end

# shout is a singleton method.
p foo.singleton_method?(:shout)


## 2nde solution bis #
class Object
  def singleton_method?(method)
    singleton_class.instance_methods(false).include?(method)
  end
end

foo = "A string"
def foo.shout
  puts foo.upcase
end

# shout is a singleton method.
p foo.singleton_method?(:shout)

### solution Rubymonk
class Object  
  def singleton_method?(method)
    singleton_methods = 
      self.singleton_class.instance_methods - self.class.instance_methods  
    singleton_methods.include? method
  end
end


foo = "A string"
def foo.shout
  puts foo.upcase
end

# shout is a singleton method.
p foo.singleton_method?(:shout)
