class AdminsController < ApplicationController  

  def admin

  end

  def admin_inventory
   @products = Product.all
  end

  def admin_orders
   @purchase_orders = PurchaseOrder.all
  end

  def contact_method
  end
end
