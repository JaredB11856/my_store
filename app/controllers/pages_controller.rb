class PagesController < ApplicationController  
  access all: [:show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

  def home
    @page_title = "My Store"   
    @my_array = [] 
    if params[:query].present?
      @products = Product.search(params[:query]).page(params[:page]).per(8)     
    else
      @products = Product.all.page(params[:page]).per(8)
    end
    @order_item = current_order.order_items.new
  end

  def cpus
        @page_title = "My Store"   
    if params[:query].present?
      @products = Product.search(params[:query]).page(params[:page]).per(8)                  
    else
      @products = Product.search("cpus").page(params[:page]).per(8) 
    end
    @order_item = current_order.order_items.new
  end

  def keyboards
        @page_title = "My Store"   
    if params[:query].present?
      @products = Product.search(params[:query]).page(params[:page]).per(8)                  
    else
      @products = Product.search("keyboards").page(params[:page]).per(8) 
    end
    @order_item = current_order.order_items.new
  end

  def monitors
        @page_title = "My Store"   
    if params[:query].present?
      @products = Product.search(params[:query]).page(params[:page]).per(8)                  
    else
      @products = Product.search("monitors").page(params[:page]).per(8) 
    end
    @order_item = current_order.order_items.new
  end


  def about
  end

  def contact
  end
end
