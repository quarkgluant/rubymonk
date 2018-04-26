class Order
  require 'logger'
  
  def initialize(order_items, customer)
    @logger = Logger.new($stdout)
    @order_items = order_items
    @customer = customer
    @state = :new
    @logger.info "New order from #{@customer}"
  end

  def procure(vendor)
    if @state == :new
      @vendor = vendor
      @state = :procured
      @logger.info "Order procured from #{@vendor}"
    else
      @logger.error "You can procure only new orders"
    end
  end

  def pack
    if @state == :procured
      @state = :packed
      @logger.info "Order packed"
    else
      @logger.error "You can't pack before procuring"
    end
  end

  def ship(address)
    if @state == :packed
      @state = :shipped
      @shipping_address = address
      @logger.info "Order shipped to #{@shipping_address}"
    else
      @logger.error "You can't ship before packing"
    end
  end
end

order = Order.new(["mouse", "keyboard"], "Asta")
order.procure("Awesome Supplier")
order.pack
order.ship("The Restaurant, End of the Universe")


