# The editor object might be constructed something like this
# e = Editor.new("class Foo; end")

def auto_complete(e)
	e.cursor.read do |word|
    # define your filters here
      if word == "\n"
         throw :eol
      elsif e.template.user_classes.include?(word)
        list = Editor.const_get(word.to_s).methods
        build_suggestion(list)
      elsif e.template.context.methods.include?(word)
        list = e.template.context.method(word).parameters
        build_suggestion(list)
     end
  end
end

def build_suggestion(list)
  Suggestion.new(list).display
end