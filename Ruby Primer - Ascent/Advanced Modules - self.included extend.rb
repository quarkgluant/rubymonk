module Foo
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end
  def self.included(base)
    base.extend ClassMethods
  end

end

class Bar
  include Foo
  #extend Foo::ClassMethods
end

#Bar.extend ClassMethods
puts Bar.guitar