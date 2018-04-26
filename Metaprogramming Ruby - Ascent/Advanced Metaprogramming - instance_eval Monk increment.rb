class Monk
  def initialize
    @zen = 42
  end
end
mini_monk = Monk.new
puts mini_monk.instance_eval { @zen += 1; @zen }