class PagesController < ApplicationController  
  before_action :set_order_item, only: [:edit, :show, :update, :destroy]
  layout "item"
  

  def home
    @items = Item.all
    @page_title = "My Store | Home"
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
  end

  def invoice
    @order_items = current_order.order_items   
    @sum = params[:a].to_f + params[:b].to_f    
  end

  def cart
  end

  def checkout
  end

  def order_summary
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
