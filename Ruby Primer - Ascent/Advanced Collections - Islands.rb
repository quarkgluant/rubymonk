class Island
  def initialize(candidates)
    @candidates = candidates
  end
  
  def survive?
    @candidates.none?{|ile| ile == "Esau"}
  end
  
  def safe?
    @candidates.all?{|ile| ile == "Jack"}
  end
end