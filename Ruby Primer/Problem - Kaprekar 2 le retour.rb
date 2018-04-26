def kaprekar?(k)
  k2_str = (k ** 2).to_s
  k2_len = k2_str.length
  k_len = k.to_s.length 
  k2_moit = k2_len - k_len
  nb_g = k2_str.slice(0...k2_moit).to_i  
  nb_d = k2_str.slice(k2_moit...k2_len).to_i  
  puts "k au carré: #{k**2}, nb_g: #{nb_g} et nb_d: #{nb_d}"
  nb_g + nb_d == k 
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


## Solution RubyMonk
def kaprekar?(k)
  no_of_digits = k.to_s.size
  square = (k ** 2).to_s
  
  second_half = square[-no_of_digits..-1]
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]
  
  k == first_half.to_i + second_half.to_i
end
