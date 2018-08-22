class ShippingAddressesController < ApplicationController
  before_action :set_shipping_address, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all


  def add 
    your_cname = params[:cname]
  end



  def shipping
   @order_items = current_order.order_items
   @shipping_addresses = ShippingAddress.all
   @shipping_address = User.last.shipping_addresses[0]     
  end
  # GET /shipping_addresses
  def index
    @shipping_addresses = ShippingAddress.all
  end

  # GET /shipping_addresses/1
  def show
  end

  # GET /shipping_addresses/new
  def new
    @shipping_address = ShippingAddress.new
  end

  # GET /shipping_addresses/1/edit
  def edit
  end

  # POST /shipping_addresses
  def create
    @shipping_address = ShippingAddress.new(shipping_address_params)

    if @shipping_address.save
      redirect_to @shipping_address, notice: 'Shipping address was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shipping_addresses/1
  def update

    if proceed? == true
      puts "Hello"
      puts params[:shipping_address]
      puts params[:commit]
      puts params[:id]
      redirect_to button2_path  
      return    
    end

    if @shipping_address.update(shipping_address_params)
      redirect_to @shipping_address, notice: 'Shipping address was successfully updated.'
    else
      render :edit
    end
  end

  def proceed?    
    params[:commit] == "Proceed"    
  end

  # DELETE /shipping_addresses/1
  def destroy
    @shipping_address.destroy
    redirect_to shipping_addresses_url, notice: 'Shipping address was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipping_address
      @shipping_address = ShippingAddress.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shipping_address_params
      params.require(:shipping_address).permit(:name, :address_line_1, :city, :state, :zip_code, :phone_number, :user_id,:cname)
    end
end
