def calculate( *items )
  numbers = []
  opt = {}
  items.each do |item|  
    numbers << item if item.is_a?(Fixnum)
    opt = item if item.is_a?(Hash)
  end
  if opt[:subtract] == true
    subtract *numbers
  else
    add *numbers
  end
end

def add *numbers
  numbers.reduce (:+)
end

def subtract *numbers
  numbers.reduce (:-)
end
