class Dojo
  @@methods_added = []
  
  def self.methods_added
    @@methods_added
  end
  
  def self.method_added(method_name)
    @@methods_added << method_name
  end
end