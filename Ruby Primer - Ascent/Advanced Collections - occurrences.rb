def occurrences(str)
  str.split(/\W/).compact.inject(Hash.new(0)) do |acc, (word, occ)|
    occ ||= 1
    occ +=1 if acc[word.downcase] == 1
    acc[word.downcase] = occ if word.downcase != "" 
    acc
  end
end

## ou mieux
def occurrences(str)
  str.split(/\W/).compact.inject(Hash.new(0)) do |acc, word|
    acc[word.downcase] += 1 if word.downcase != "" 
    acc
  end
end

## solution RubyMonk
def occurrences(str)
	str.scan(/\w+/).inject(Hash.new(0)) do |build, word| 
  	build[word.downcase] +=1
  	build
	end
end