def find_frequency(sentence, word)
  # Your code here
  hach = Hash.new(0)
  sentence.downcase.split(/\W/).each{|wrd| hach[wrd] += 1}
  hach[word.downcase]
end

## autre version
def find_frequency(sentence, word)
  frequency = sentence.split(' ').compact.inject(Hash.new(0)) do |compteur, mot|
    compteur[mot.downcase] += 1
    compteur
  end
  frequency[word]
end
