class Dojo
  @@methods_undefined = []
  
  def self.methods_undefined
    @@methods_undefined
  end
  
  def self.method_undefined(method_name)
    @@methods_undefined << method_name
  end

  def tai_kyo_kyu
  end
  
  def pinan_shodan
  end
end