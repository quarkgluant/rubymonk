class Spy
  def initialize(enemy_agent)
    @enemy_agent = enemy_agent
  end

  # Write your method_missing here
  def method_missing(sym, *args)
    @enemy_agent.send(sym, *args)
  end
  
end