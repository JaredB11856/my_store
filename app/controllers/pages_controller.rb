class PagesController < ApplicationController  
  access all: [:show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

  def home
    @page_title = "My Store"    
    if params[:query].present?
      @products = Product.search(params[:query]).page(params[:page]).per(8)
    else
      @products = Product.all.page(params[:page]).per(8)
    end
    @order_item = current_order.order_items.new
  end

  def about
  end

  def contact
  end

  ##TODO make better name than user_page
  def user_page  
    @order_items = OrderItem.all       
    @purchase_orders = PurchaseOrder.all
    @orders = current_user.orders
    @all_orders = Order.all
  end   
end
