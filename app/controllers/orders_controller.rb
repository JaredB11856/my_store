class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update]
  access all: [:index, :show, :new, :edit, :create, :update], user: :all

  # GET /orders
  def index
    @orders = Order.all
  end

  # GET /orders/1
  def show
    @order = Order.find(params[:id])
    @billing_information = Order.find(params[:id]).billing_informations
  end

  # GET /orders/new
  def new
    @order = Order.new 
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  def create
    byebug
    @order = Order.new(order_params)
    #@order.user_ip = request.remote_ip
    if @order.save      
      redirect to @order, notice: 'Purchase order was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /orders/1
  def update    
   #@order.user_ip = request.remote_ip   
    if @order.save
      #TODO Move this to model      
        @order_items = current_order.order_items       
        @order.update!(total: "#{@order_items.sum(&:total_price)}")
        @order.update!(order_status_id: :processed)
        @order.update(order_params)
      if @order.purchase      
        session.delete(:order_id)    
        redirect_to root_path, notice: "Your order has been placed." 
      else
        @order_items = current_order.order_items        
        @order.update!(total: "#{@order_items.sum(&:total_price)}")
        session.delete(:order_id)
        redirect_to root_path, notice: "Purchase could not be completed."
      end
    else
      render :new      
    end
  end

  def billing    
    @order_items = current_order.order_items
    @order = Order.find(session[:order_id])
    @order.update!(order_status_id: :cart)
    
    #TODO
    # If the there is a order already completed or status_id.placed then crate a new one otherwise use the old one.
    #if order.status_id.placed 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params[:order].permit(
                                     :subtotal,
                                     :shipping,
                                     :total,
                                     :tracking,
                                     :order_status_id, 
                                     shipping_addresses_attributes: [:name, :address_line_1, :address_line_2, :city, :state, :zip_code, :phone_number],
                                     billing_informations_attributes: [:name, :address_line_1, :address_line_2, :city, :state, :zip_code, :phone_number, :cc_type, :cc_last_four],
                                     )
    end
end