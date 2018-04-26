class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    # your code here
    cost = 0
    orders.each do |order|
      order.each do |dish, val|
        cost += @menu[dish] * val
      end
    end
    cost
  end
end
 restau = Restaurant.new({:rice => 3, :noodles => 2})
 restau.cost( {:rice => 1, :noodles => 1})
 restau.cost( {:rice => 1, :noodles => 1}, {:rice => 2, :noodles => 2})

 ## 2nde Solution
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    cout = 0
    orders.each{|tab| tab.each{|key, val| cout += @menu[key] * val } }
    cout
  end
end

## Solution RubyMonk
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end
