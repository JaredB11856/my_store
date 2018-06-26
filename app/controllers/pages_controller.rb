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

  def cart
  end

  def set_portfolio_item
    ##
    @item = Item.find(params[:id])
  end  

end
