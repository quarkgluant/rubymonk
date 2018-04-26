class Object
  def not
    # fill out 'not' with a 'Not'!
    Not.new(self)
  end

  class Not
    def initialize(original)
      @original = original
    end

    def method_missing(sym, *args, &blk)
      # use me to send the message to the original object, then invert it.
      res = @original.send sym, *args, &blk
      !res
    end
  end
end

class Person
  def initialize(name)
    @name = name
  end
  
  def smith?
    @name == "Smith"
  end
end

puts Person.new("Smith").not.smith?
puts Person.new("Ziggy").not.smith?