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

## autre solution
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
    @delivery = Hash.new(0)
  end
  
  def add(dish)
    @delivery[dish.class] += 1
  end
  
  def dishes_needed
     if @delivery.empty?
       "None."
     else
       menu = []
       @delivery.each do |k, v|
         menu << "#{@delivery[k]} #{DISH_BOWL_MAPPING[k]}"
       end
      menu.join(', ')
     end
  end
end  

d = DeliveryTray.new
d.add Soup.new; d.add Soup.new
d.add IceCream.new

puts d.dishes_needed # should be "2 soup bowl, 1 ice cream bowl"
