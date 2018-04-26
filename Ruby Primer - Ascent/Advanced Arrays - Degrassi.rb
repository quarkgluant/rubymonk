CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degrassi_couples
  res = []
  couples = CHARACTERS.product(CHARACTERS)
  couples.each{ |p1, p2| res << [p1, p2] unless p1 == p2}
  res.uniq    
end

## Solution RubyMonk
CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degrassi_couples
  all = CHARACTERS.product(CHARACTERS)
  all.reject {|c| c.first == c.last}
end