class ShippingAddressesController < ApplicationController
  before_action :set_shipping_address, only: [:show, :edit, :update, :destroy]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all


  def add 
    your_cname = params[:cname]
  end



  def shipping
   @order_items = current_order.order_items
   @shipping_addresses = ShippingAddress.all
   @shipping_address = ShippingAddress.all[0]
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
      User.last.invoices.create!(
      name: "Invoice",
      tracking: "1Z9Y97F0YN0112988",
      total: "1"
    )
      @new_address = ShippingAddress.create!(
    )
    ShippingAddress.last.update!(shipping_address_id: "#{ShippingAddress.last.id}") 

    BillingInformation.create!(
    name: "Jared Brown", 
    address_line_1:"15000 W 500 N", 
    address_line_2: "Po Box 523", 
    city: "Somewhere", 
    state: "ID", 
    zip_code: "83440",
    cc_type: "Visa",
    cc_last_four: "1234",
    invoice_id: Invoice.last.id    
   )    
    @shipping_address = ShippingAddress.find(params[:shipping_address][:shipping_address_id]) 
    @new_address.update!(name: "#{@shipping_address.name}", 
                         address_line_1: "#{@shipping_address.address_line_1}",
                         address_line_2: "#{@shipping_address.address_line_2}",
                         city: "#{@shipping_address.city}",
                         state: "#{@shipping_address.state}",
                         zip_code: "#{@shipping_address.zip_code}",
                         phone_number: "#{@shipping_address.phone_number}"
      )      
      ShippingAddress.last.update!(invoice_id: "#{ShippingAddress.last.id}")
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
