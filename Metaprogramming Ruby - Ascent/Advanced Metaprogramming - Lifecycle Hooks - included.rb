module SparringArea
  @@included_into = []
  
  def self.included_into
  	@@included_into  
  end
  
  def self.included(class_or_module)
    @@included_into << class_or_module
  end
end