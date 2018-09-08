class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :toggle_status]
  access all: [:show], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

  def index
    if params[:query].present?
      @products = Product.search(params[:query]).page(params[:page]).per(8)
    else
      @products = Product.all.page(params[:page]).per(8)
    end    

    @order_item = current_order.order_items.new
  end

  def edit
  end

  def show
    @product = Product.friendly.find(params[:id])   
    #TODO
    @page_title = ("My Store| " + @product.product_id)
    #TODO
    #@seo_keywords = @product.
    @order_item = current_order.order_items.new
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product information was successfully updated.'
    else
      render :edit
    end
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_product           
      @product = Product.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:category, :brand, :primary, :secondary, :details, :quantity)
    end

end