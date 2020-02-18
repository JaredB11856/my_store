class UserPagesController < ApplicationController  

  def user_page  
    @order_items = OrderItem.all           
    @orders = current_user.orders   

    @products = Product.all 
  end   

  def user_billing

  end

  def user_shipping

  end

  def user_settings

  end

  def user_order_history  
    @order_items = OrderItem.all           
    @orders = current_user.orders    
  end  
end