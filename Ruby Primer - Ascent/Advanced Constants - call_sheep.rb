module Fence
	Sheep = Class.new do
    def speak
      "Bah."
    end
  end
end

def call_sheep
  Fence::Sheep.new.speak
end