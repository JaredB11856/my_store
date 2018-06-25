class CategoriesController < ApplicationController
before_action :set_item, only: [:show, :edit, :update, :destroy, :toggle_status]
  access all: [:show], user: {except: [:destroy, :new, :Create, :update, :edit]}, admin: :all
  

  # GET /items
  # GET /items.json
  def cpus 
    @items = Item.all
  end

  def keyboards
    @items = Item.all
  end

  def monitors
    @items = Item.all
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item      
      @item = Item.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:category, :brand, :primary, :secondary, :details)
    end


end