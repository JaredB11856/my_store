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
  end
end