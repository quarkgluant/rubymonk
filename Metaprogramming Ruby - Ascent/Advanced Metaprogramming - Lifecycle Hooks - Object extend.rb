class Dojo
end

module SparringArea
  @@extended_objects = []
  
  def self.extended_objects
  	@@extended_objects
  end
  
  def self.extended(objet)
    @@extended_objects << objet
  end
end

A_DOJO = Dojo.new
ANOTHER_DOJO = Dojo.new