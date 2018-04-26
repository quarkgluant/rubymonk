class Spy
  def initialize(enemy_agent)
    @enemy_agent = enemy_agent
  end

  def method_missing(name, *args)
    @enemy_agent.send(name, *args)
  end
end