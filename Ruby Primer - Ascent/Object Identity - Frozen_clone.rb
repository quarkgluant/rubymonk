class Object
  def frozen_clone
    # your code here
    self.clone.freeze
  end
end

## or
class Object
  def frozen_clone
    # your code here
    clone.freeze
  end
end
