class CategoriesController < ApplicationController
before_action :set_product, only: [:show, :edit, :update, :destroy, :toggle_status]
  access all: [:show], user: {except: [:destroy, :new, :Create, :update, :edit]}, admin: :all
  

  # GET /items
  # GET /items.json
  def cpus 
   @products = Product.all.page(params[:page]).per(8)
    @order_item = current_order.order_items.new
  end

  def keyboards
   @products = Product.all.page(params[:page]).per(8)
    @order_item = current_order.order_items.new
  end

  def monitors
    @products = Product.all.page(params[:page]).per(8)
    @order_item = current_order.order_items.new
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product    
      @product = Product.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:category, :brand, :primary, :secondary, :details)
    end


end