class Room
  @@subclasses = []
  
  def self.subclasses
    @@subclasses
  end
  
  def self.inherited(klass)
    @@subclasses << klass
  end
end
