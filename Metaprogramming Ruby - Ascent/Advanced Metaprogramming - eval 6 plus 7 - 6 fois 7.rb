# assuming contents has the code 
# def code
#   7 + 6
# end

contents = Document.new('zen').get_contents
result = eval("contents.gsub('+', '*')")