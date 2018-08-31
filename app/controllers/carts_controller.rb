class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end
  
  def checkout
    @order_items = current_order.order_items   
    @credit_card = CreditCard.new 
    @shipping_addresses = ShippingAddress.all
    @billing_information = BillingInformation.all[0]
  end
  def order_confirmation
    @order_items = current_order.order_items

    @order_items = OrderItem.all
    @invoices = Invoice.all
    @order = current_order
    @oi = Order.all    
  end
  def order_summary
     @order_items = current_order.order_items  


         
  end

  def assign_invoice_to_order_item
    
    
      @order_items = current_order.order_items

      puts 'Order_items:'
      puts @order_items.ids
      @invoice_id = Invoice.last.id
      @order_items.update(invoice_id: "#{@invoice_id}")
      #@order_items.each do |oi|
      #  puts "Hello:"
      #  puts oi.invoice_id
      #end
      
  end

  def place_order    
    @order = current_order
    @order.update!(order_status_id: 'placed' )
    @order.update!(total: "100" )
    assign_invoice_to_order_item
    session.delete(:order_id)

    submit_payment   

    #redirect_to root_path, notice: "You're order has been placed."
  end

  def submit_payment
    
    if @order.purchase
      render :action => "success"
      return
    else
      render :action => "failure"
      return
    end
  else
    puts "render new"
  end

  def submit_shipping
    puts "Hello"
    @some_var = params[:start_point]
    puts @some_var
    puts "Hello"
        
    redirect_to checkout_path
  end

  def billing    
    @order_items = current_order.order_items
    @shipping_addresses = ShippingAddress.all
    @shipping_address = ShippingAddress.all[0]

    
    if proceed? == true
        puts "hello"
        puts params[:cc_name]
        puts params[:cc_number]
        puts params[:cc_expiration_mm]
        puts params[:cc_expiration_yy]
        puts params[:cc_cvv]
        puts params[:firstName]
        puts params[:lastName]
        puts params[:address]
        puts params[:address2]
        puts params[:country]
        puts params[:state]
        puts params[:zip]
        puts params[:same_address] == true
        puts params[:save_info] == true
        puts params[:commit]        
        puts "hello"
      return    
    end
  end
  def shipping
    @order_items = current_order.order_items
    @shipping_addresses = ShippingAddress.all
    @shipping_address = ShippingAddress.all[0]
  end

  def proceed?    
    params[:commit] == "Proceed"    
  end

  
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_address
      @shipping_address = ShippingAddress.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shipping_address_params
      params.require(:shipping_address).permit(:name, :address_line_1, :city, :state, :zip_code)
    end
end