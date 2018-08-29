class PagesController < ApplicationController  
  before_action :set_order_item, only: [:edit, :show, :update, :destroy]
  layout "item"
  

  def home
    @page_title = "My Store | Home"
    
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
    @sum = params[:a]
    #@order_item = @order.order_items.find(params[:id])
    #@order_item = OrderItem.find(params[:id])
    @order_items = OrderItem.all
    @invoices = Invoice.all
    @shipping_addresses = ShippingAddress.all
    @billing_informations = BillingInformation.all
  end

  def new_shipping_address
    #@shipping_address = ShippingAdress.new
    #3.times { @shipping_address.build}
  end

  def invoice
    @order_items = current_order.order_items   
    @sum = params[:a].to_f + params[:b].to_f    
  end

  def cart
  end

  def checkout
  end  

  def set_portfolio_item
    ##
    @item = Item.find(params[:id])
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_item
      @order_item = OrderItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_item_params
      params.require(:order_item).permit(:id)
    end

end
