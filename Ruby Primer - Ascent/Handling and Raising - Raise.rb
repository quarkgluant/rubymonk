def string_slice(*mes_chaines)
  raise ArgumentError if mes_chaines.size > 5
  resultat = []
  mes_chaines.each do |string|
    raise IndexError if string.length < 3 
    resultat << string.slice(0..2)
  end
  resultat
end
# mieux
def string_slice(*args)
  raise ArgumentError if args.length > 5
  args.inject([]) do |tableau, chaine|
    raise IndexError if chaine.length < 3
    tableau << chaine[0..2]
  end
end
