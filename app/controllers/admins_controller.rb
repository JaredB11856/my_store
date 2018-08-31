class AdminsController < ApplicationController  

  def admin

  end

  def admin_inventory
   @products = Product.all
  end

  def admin_orders
   @orders = OrderItem.all
  end
end
