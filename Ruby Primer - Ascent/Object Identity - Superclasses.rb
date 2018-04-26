class Object
  def superclasses
    # your code here
	  res = Array.new
	  p "self = #{self}"
	  objet = self
	  p "objet.superclass = #{objet.superclass}"
	  while objet.superclass != nil do
	    res << objet.superclass
	    objet = objet.superclass
	  end
	  res
  end
end

class Bar
end

class Foo < Bar
end

p Foo.superclasses  # should be [Bar, Object, BasicObject]

## solution de Rubymonk
class Object
  def superclasses(klass = self.superclass)
    return [] if klass.nil?
    [klass] + superclasses(klass.superclass)
  end
end
