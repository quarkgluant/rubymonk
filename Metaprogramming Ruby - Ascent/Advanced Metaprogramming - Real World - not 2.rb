class Object
  def not
    Not.new(self)
  end

  class Not
    # the call to `select` is optional for passing this exercise.
    # we've included it here because methods with these types of
    # names should not be proxied:
    # 1) methods starting with underscore (i.e. __send__ )
    # 2) methods which are not words (i.e. != )
    # 3) methods which end in "binding"
    private *instance_methods.select { |m| m !~ /(^__|^\W|^binding$)/ }
    # ...with the `select` in place, you can use this snippet in 
    # your own projects!
    
    def initialize(original)
      @original = original
    end

    def method_missing(sym, *args, &blk)
      !@original.send(sym, *args, &blk)
    end
  end
end

puts "nil.not.nil? => #{nil.not.nil?}"
puts "Object.new.not.nil? => #{Object.new.not.nil?}"