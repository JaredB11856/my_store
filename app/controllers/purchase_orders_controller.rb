class PurchaseOrdersController < ApplicationController
  before_action :set_purchase_order, only: [:show, :edit, :update]
  access all: [:index, :show, :new, :edit, :create, :update, :billing], user: :all

  # GET /purchase_orders
  def index
    @purchase_orders = PurchaseOrder.all
  end

  # GET /purchase_orders/1
  def show
  end

  # GET /purchase_orders/new
  def new
    @purchase_order = PurchaseOrder.new
  end

  # GET /purchase_orders/1/edit
  def edit
  end

  # POST /purchase_orders
  def create
    puts "Create ran"
    @purchase_order = PurchaseOrder.new(purchase_order_params)
    @purchase_order.user_ip = request.remote_ip
    if @purchase_order.save      
      redirect to @purchase_order, notice: 'Purchase order was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /purchase_orders/1
  def update    
    @purchase_order.user_ip = request.remote_ip   
    if @purchase_order.save
      #TODO Move this to model
        @order_items = current_order.order_items       
        @purchase_order.update!(total: "#{@order_items.sum(&:total_price)}")
        @purchase_order.update!(purchase_order_status_id: :processed)
        @purchase_order.update(purchase_order_params)
      if @purchase_order.purchase        
        session.delete(:order_id)    
        redirect_to root_path       
      else                
        @order_items = current_order.order_items        
        @purchase_order.update!(total: "#{@order_items.sum(&:total_price)}")
        session.delete(:order_id)
        redirect_to root_path    
      end
    else
      render :new      
    end
  end

  def billing    
    @order_items = current_order.order_items
    @purchase_order = PurchaseOrder.create  
    @purchase_order.update!(purchase_order_status_id: :cart)
    
    #TODO
    # If the there is a purchase_order already completed or status_id.placed then crate a new one otherwise use the old one.
    #if purchase_order.status_id.placed 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_order
      @purchase_order = PurchaseOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def purchase_order_params
      params[:purchase_order].permit(:cc_first_name,
                                     :cc_last_name,
                                     :cc_month,
                                     :cc_year,
                                     :card_type,
                                     :user_ip,
                                     :billing_first_name,
                                     :billing_last_name, 
                                     :billing_address_1,
                                     :billing_address_2, 
                                     :billing_city,
                                     :billing_state,
                                     :billing_country,
                                     :billing_zip, 
                                     :shipping_option,
                                     :shipping_first_name,
                                     :shipping_last_name,
                                     :shipping_address_1,
                                     :shipping_address_2,
                                     :shipping_country,
                                     :shipping_state,
                                     :shipping_zip,
                                     :subtotal,
                                     :shipping,
                                     :total,
                                     :tracking,
                                     :purchase_order_status_id
                                     )
    end
end
