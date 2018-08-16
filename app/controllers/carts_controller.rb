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
    @oi = Order.all

    
  end
  def order_summary
     @order_items = current_order.order_items   

  end

  def place_order    
    @order = current_order
    @order.update!(order_status_id: 'cart' )
    session.delete(:order_id)    
    redirect_to order_confirmation_path, notice: "You're order has been placed."
  end
end