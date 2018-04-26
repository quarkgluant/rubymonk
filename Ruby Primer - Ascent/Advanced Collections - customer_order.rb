class Order
  GIFT_ITEMS = [Item.new(:big_white_tshirt), Item.new(:awesome_stickers)]
  OUT_OF_STOCK_ITEMS = [Item.new(:ssd_harddisk)]

  def initialize(order)
    @order = order || []        
  end
  
  def final_order
    # fix this method to get the tests to pass.
    @order = @order.reject{|item| OUT_OF_STOCK_ITEMS.include?(item)}
    @order << GIFT_ITEMS.sample
  end
end

customer_order = Order.new([Item.new(:fancy_bag),Item.new(:ssd_harddisk)])

p customer_order.final_order

# mieux
class Order
  GIFT_ITEMS = [Item.new(:big_white_tshirt), Item.new(:awesome_stickers)]
  OUT_OF_STOCK_ITEMS = [Item.new(:ssd_harddisk)]

  def initialize(order)
    @order = order || []        
  end
  
  def final_order
    # fix this method to get the tests to pass.
    @order = (@order | GIFT_ITEMS) - OUT_OF_STOCK_ITEMS 
  end
end

customer_order = Order.new([Item.new(:fancy_bag),Item.new(:ssd_harddisk)])

p customer_order.final_order
