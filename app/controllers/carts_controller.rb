class CartsController < ApplicationController
  
  def show
    @order_items = current_order.order_items
  end
  
  def checkout
    @order_items = current_order.order_items   
  end
  def order_confirmation
    @order_items = current_order.order_items
    @order_items = OrderItem.all
    @order = current_order
    @oi = Order.all    
  end
  def order_summary
     @order_items = current_order.order_items         
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