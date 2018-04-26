def palindrome?(sentence)
  # Write your code here
  sentence.downcase.delete(" ") == sentence.downcase.delete(" ").reverse
end

## autre solution
def palindrome?(sentence)
  # Write your code here
  to_test = sentence.downcase.gsub(' ', '')
  to_test == to_test.reverse
end
