def kaprekar?(k)
  k_carre = k ** 2
  k_tab = k_carre.to_s.split(//)
  p "k_tab = #{k_tab}"
  k_digit_droite = []
  k_digit_gauche = []
  k_chaine_droite =""
  k_chaine_gauche =""
  p "k.to_s.length = #{k.to_s.length}"
  k_digit_droite = k_tab.pop(k.to_s.length) # { k_digit_droite << k_tab.shift }
  p "k_digit_droite = #{k_digit_droite}"
  p "k_tab = #{k_tab}"
  k_tab.each {|digit| k_chaine_gauche += digit}
  k_digit_droite.each  {|digit| k_chaine_droite += digit}
  p "k_chaine_droite = #{k_chaine_droite} et k_chaine_gauche = #{k_chaine_gauche}"
  k_nbre_droite = k_chaine_droite.to_i
  k_nbre_gauche = k_chaine_gauche.to_i
  p "k_nbre_droite = #{k_nbre_droite} et k_nbre_gauche = #{k_nbre_gauche}"
  if k == k_nbre_droite + k_nbre_gauche
    true
  else
    false
  end
end

def kaprekar?(k)
  k_carre = k ** 2
  k_tab = k_carre.to_s.split(//)
  k_digit_droite = []
  k_chaine_droite =""
  k_chaine_gauche =""
  k_digit_droite = k_tab.pop(k.to_s.length)
  k_digit_droite.each {|digit| k_chaine_droite += digit}
  k_tab.each  {|digit| k_chaine_gauche += digit}
  k_nbre_droite = k_chaine_droite.to_i
  k_nbre_gauche = k_chaine_gauche.to_i
  if k == k_nbre_droite + k_nbre_gauche
    true
  else
    false
  end
end

## autre solution
def kaprekar?(k)
  test = (k *k).to_s.split('').map(&:to_i)
  length = k.to_s.split('').length
  puts "k: #{k}, carre: #{k*k}, length: #{length}"
  p "test: #{test}"
  if test.length.even?
    test[0, length].join.to_i + test[-length, length].join.to_i == k
  else
    test[0, length - 1].join.to_i + test[-length, length].join.to_i == k
  end
end


#LEUR SOLUTION
def kaprekar?(k)
  no_of_digits = k.to_s.size
  square = (k ** 2).to_s
  
  second_half = square[-no_of_digits..-1]
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]
  
  k == first_half.to_i + second_half.to_i
end


kaprekar?(90)
kaprekar?(297)
kaprekar?(703)
