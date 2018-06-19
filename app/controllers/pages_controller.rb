class PagesController < ApplicationController
  ##
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  def home
    @items = Item.all
  end

  def about
  end

  def contact
  end

  def set_portfolio_item
    ##
    @item_item = Item.find(params[:id])
  end
end
