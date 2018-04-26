def location_in_hierarchy(object, method)
  # Your code here
  #object = BasicObject
  klass = object.class
  until klass.instance_methods.include?(method) do
    p "klass = #{klass}"
    p "klass.class = #{klass.class}"
    p "klass.superclass = #{klass.superclass}"
    klass = klass.class
    
  end
  klass  
end

## 2nde solution
def location_in_hierarchy(object, method)
  # Your code here
  #object = BasicObject
  objet = object.class
  res = [objet]
  while objet.superclass != nil do
    res << objet.superclass
    objet = objet.superclass
  end
  res.reverse.find{|klass| klass.instance_methods.include?(method)}
end
 
# LEUR SOLUTION

def location_in_hierarchy(object, method)
  klass = object.class
  ancestors = [klass]
  while not (superclass = klass.superclass).nil?
    ancestors << superclass
    klass = superclass
  end
  ancestors.reverse.find do |ancestor| 
    ancestor.instance_methods.include?(method)
  end
end
location_in_hierarchy(1, :between?) # returns Numeric
location_in_hierarchy('a string', :to_s) # returns Object
location_in_hierarchy(lambda {}, :call) # returns Proc
