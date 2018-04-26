class Dojo
  @@singleton_methods_added = []
  
  def self.singleton_methods_added
    @@singleton_methods_added
  end
  
  def self.singleton_method_added(method_name)
    @@singleton_methods_added << method_name
  end
end