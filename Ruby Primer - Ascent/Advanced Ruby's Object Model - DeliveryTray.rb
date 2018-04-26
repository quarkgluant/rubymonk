class Dish
end

class Soup < Dish
end
class IceCream < Dish
end
class ChineseGreenBeans < Dish
end

class DeliveryTray
  DISH_BOWL_MAPPING = { 
    Soup => "soup bowl",
    IceCream => "ice cream bowl",
    ChineseGreenBeans => "serving plate"
  }
    
  def initialize
    @commande = { Soup => 0, IceCream => 0, ChineseGreenBeans => 0 }
    @res = []
  end
  def add(dish)
    # puts "#{dish}.class: #{dish.class}"
    # puts "#{@commande}"  
    @commande[dish.class] += 1
  end
  
  def dishes_needed
    if @commande.all?{|key, val| val == 0 }
      "None."
    else
      @commande.each{|mets, nb| @res << "#{nb} #{DISH_BOWL_MAPPING[mets]}" if nb > 0}
      @res.join(", ")
    end
  end
end  

d = DeliveryTray.new
d.add Soup.new; d.add Soup.new
d.add IceCream.new

#puts d.dishes_needed # should be "2 soup bowl, 1 ice cream bowl"
## Autre solution
class Dish
end

class Soup < Dish
end
class IceCream < Dish
end
class ChineseGreenBeans < Dish
end

class DeliveryTray

  DISH_BOWL_MAPPING = { 
    Soup => "soup bowl",
    IceCream => "ice cream bowl",
    ChineseGreenBeans => "serving plate"
  }
  
  def initialize
    @res = { 
      Soup => 0,
      IceCream => 0,
      ChineseGreenBeans => 0
      }
  end
 
    
  
  def add(dish)
    @res[dish.class] += 1
      p "self.res = #{@res}"
  end
  
  def dishes_needed
    tab = []
    @res.each do |dish, qty| 
      repas = "#{qty} #{DISH_BOWL_MAPPING[dish]}"
      tab << repas unless qty == 0
    end
    return "None." if tab == []
    return tab.join(", ")
  end
end  

d = DeliveryTray.new
d.add Soup.new; d.add Soup.new
d.add IceCream.new

puts d.dishes_needed # should be "2 soup bowl, 1 ice cream bowl"
