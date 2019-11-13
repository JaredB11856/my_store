class PagesController < ApplicationController  
  access all: [:show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

  def home
    @page_title = "My Store"   
    @my_array = [] 
    if params[:query].present?
      @products = Product.search(params[:query]).page(params[:page]).per(8)
      @products.each do |product|        
        @my_array.push(product.brand)
      end
       @my_array = @my_array.uniq.sort

       @products.sort_by do |product|
        product.brand        
      end  
    else      
      Product.all.each do |product|        
        @my_array.push(product.brand)
      end
       @my_array = @my_array.uniq.sort

       @products = Product.all.sort_by do |product|
        product.brand        
      end    
    end
    @order_item = current_order.order_items.new
  end

  def filter_menu
    puts "Hello"
    request.params.merge(query: "ABC")
    Product.search("ABC")
  end

  def cpus
  end

  def keyboards
  end

  def monitors
  end


  def about
  end

  def contact
  end

  ##TODO make better name than user_page
  def user_page  
    @order_items = OrderItem.all           
    @orders = current_user.orders    
  end   
end
