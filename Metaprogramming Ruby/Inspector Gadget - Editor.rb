editor = Editor.new("class Foo; end")

def auto_complete(editor)
	editor.cursor.read do |word|
    if word == "\n"
      throw :eol
    elsif editor.template.user_classes.include?(word)
      list = eval(word.to_s).methods
      build_suggestion(list)
    elsif editor.template.context.methods.include?(word)
      list = editor.template.context.method(word).parameters
      build_suggestion(list)
    end
	end
end

def build_suggestion(list)
  Suggestion.new(list).display
end