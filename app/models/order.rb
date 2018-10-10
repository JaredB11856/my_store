class Order < ActiveRecord::Base  
  belongs_to :order_status
  has_many :shipping_addresses
  accepts_nested_attributes_for :shipping_addresses

  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  enum order_status_id: { cart: 0, processed: 1 }
  attr_accessor :card_number, :card_verification, :error_message

  def purchase    
    begin
      response = GATEWAY.purchase(price_in_cents, credit_card, purchase_options)  
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
        :name     => "billing_first_name",
        :address1 => "billing_address_1",
        :city     => "billing_city",
        :state    => "ID",
        :country  => "US",
        :zip      => "billing_zip"
      }
    }
  end  
  
  def credit_card
  puts self.inspect
    @credit_card = ActiveMerchant::Billing::CreditCard.new(
      :first_name         => "Jack", 
      :last_name          => "Brown",
      :number             => card_number,
      :month              => "01",
      :year               => "20",
      :verification_value => card_verification,
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