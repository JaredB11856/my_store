class AdminsController < ApplicationController  
  access user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

  def admin
  end

  def admin_inventory
   @products = Product.all
  end

  def admin_orders
   @orders = Order.all
  end
  
end
