class Monk
end

m = Monk.new
m.instance_eval do
  def zen
    42
  end
end