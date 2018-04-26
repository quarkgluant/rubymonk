def sort_string(string)
  string.split(' ').sort{|mot_1, mot_2| mot_1.length <=> mot_2.length}.join(' ')
end
