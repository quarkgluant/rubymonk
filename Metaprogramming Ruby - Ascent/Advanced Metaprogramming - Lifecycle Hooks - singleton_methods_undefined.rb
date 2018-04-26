class Dojo
  @@singleton_methods_undefined = []
  
  def self.singleton_methods_undefined
    @@singleton_methods_undefined
  end
  
  def self.singleton_method_undefined(method_name)
    @@singleton_methods_undefined << method_name
  end
  
  def self.tai_kyo_kyu
  end
  
  def self.pinan_shodan
  end
end