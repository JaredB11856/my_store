class Order < ActiveRecord::Base  
  belongs_to :user
  has_one :shipping_address
  has_one :billing_information
  has_one :card
  has_many :order_items
  accepts_nested_attributes_for :shipping_address
  accepts_nested_attributes_for :billing_information  
  accepts_nested_attributes_for :card 
  before_create :set_order_status
  before_save :update_subtotal

  enum order_status_id: { cart: 0, processed: 1 }
  attr_accessor :card_number, :card_verification, :cc_month, :cc_year, :error_message

  def purchase    
    begin
      response = GATEWAY.purchase(price_in_cents, active_merchant_card, purchase_options)       
      return response
    rescue ActiveMerchant::ConnectionError => e
    end
  end
  
  def price_in_cents   
    total * 100
  end

  def purchase_options
    {
      :ip => "127.0.0.1",
      :billing_address => 
      {
        :name     => "Jack",
        :address1 => "Address",
        :city     => "Somewheresville",
        :state    => "ID",
        :country  => "US",
        :zip      => "83450"
      }
    }
  end  
  
  def active_merchant_card
  puts self.inspect
    @credit_card = ActiveMerchant::Billing::CreditCard.new(
      :first_name         => "Jack", 
      :last_name          => "Brown",
      :number             => "4032038747093601",
      :month              => "08",
      :year               => "2023",
      :verification_value => "123",
      :brand              => "visa"
    )
  end

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 'cart'
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end 
end