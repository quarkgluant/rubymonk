class Dojo
  @@singleton_methods_removed = []
  
  def self.singleton_methods_removed
    @@singleton_methods_removed
  end

  def self.singleton_method_removed(method_name)
    @@singleton_methods_removed << method_name
  end
    
  def self.tai_kyo_kyu
  end
  
  def self.pinan_shodan
  end
end