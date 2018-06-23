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

  def set_portfolio_item
    ##
    @item = Item.find(params[:id])
  end

  def cpus
    
  end

  def monitors
    
  end

  def keyboards
    
  end

end
