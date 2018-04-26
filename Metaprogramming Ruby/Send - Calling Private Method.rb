class Initiate
  def initialize(secretive_monk)
    @secretive_monk = secretive_monk
  end
  
  def	meaning_of_life
    # change this line to sneakily call `meaning_of_life`, even though
    # it is a private method.
    @secretive_monk.send(:meaning_of_life)
  end
end