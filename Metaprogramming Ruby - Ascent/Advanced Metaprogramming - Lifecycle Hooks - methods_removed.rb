class Dojo
  @@methods_removed = []
  
  def self.methods_removed
    @@methods_removed
  end

  def self.method_removed(method_name)
    @@methods_removed << method_name
  end
  
  def tai_kyo_kyu
  end
  
  def pinan_shodan
  end
end