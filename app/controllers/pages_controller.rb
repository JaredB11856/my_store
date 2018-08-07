class PagesController < ApplicationController  
  before_action :set_item, only: [:edit, :show, :update, :destroy]
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
    @invoices = Invoice.all
  end

  def invoice
    @invoices = Invoice.all
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

end
