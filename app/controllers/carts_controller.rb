class CartsController < ApplicationController
  
  def show
    @order_items = current_order.order_items
  end  

  def order_confirmation
    @order_items = current_order.order_items
    @order_items = OrderItem.all
    @order = current_order
    @oi = Order.all    
  end

end