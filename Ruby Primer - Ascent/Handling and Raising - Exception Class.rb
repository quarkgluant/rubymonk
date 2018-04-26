class KasayaError < StandardError
end

def robe(type)
  unless type.downcase == "kasaya"
    raise KasayaError, "Wrong robe!"
  end
  
  "Dharmaguptaka's " + type.capitalize + " Robe"
end

## autre solution
class KasayaError < StandardError
end
def robe(type)
  raise KasayaError, "Wrong Robe!" unless type.downcase == "kasaya"
  "Dharmaguptaka's #{type.capitalize} Robe"
end

## 2nde solution de RubyMonk
class KasayaError < StandardError
end
def robe(type)
  raise KasayaError, "Wrong Robe!" unless type.downcase == "kasaya"
  "Dharmaguptaka's " + type.capitalize + " Robe"
end
