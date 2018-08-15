class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end
  def checkout
    @order_items = current_order.order_items   
    @credit_card = CreditCard.new 
  end
  def order_confirmation
    @order_items = current_order.order_items
    @order = current_order

    place_order
  end
  def order_summary
     @order_items = current_order.order_items   
  end

  def place_order
    @order.update!(order_status_id:1 )
    puts "You're order has been placed."
  end
end