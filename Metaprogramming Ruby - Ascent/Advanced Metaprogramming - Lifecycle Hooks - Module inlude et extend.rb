module Gym
  def self.included(base)
    base.send :extend, ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def build
      include InstanceMethods
    end
  end
  
  module InstanceMethods
    def open
    end
    
    def book_for_practice
    end
    
    def close
    end
  end
end
