class MethodCall
  def initialize(sym, args)
    @sym = sym
    @args = args
  end
  
  def sym
    @sym
  end
  
  def args
    @args
  end
  
  def ==(other_call)
    @sym == other_call.sym && @args == other_call.args
  end
end

class Spy
  def initialize
    @method_calls = []
  end
  
  def method_missing(sym, *args, &block)
    @method_calls << MethodCall.new(sym, args)
  end

  def method_called?(sym, *args)
    # Your superiors will call this method to ask you if you've seen
    # a particular method call. Simply answer them by returning true
    # or false.
    @method_calls.include?(MethodCall.new(sym, args))
  end
end