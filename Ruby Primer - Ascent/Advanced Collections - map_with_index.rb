class Array
  def map_with_index(&block)
    self.each_with_index.map(&block)
  end
end