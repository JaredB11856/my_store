class Order < ActiveRecord::Base
  enum order_status_id: { cart: 0, placed: 1 }
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

   attr_accessor :card_number, :card_verification
  
  
  
  def purchase
    response = GATEWAY.purchase(1000, credit_card, purchase_options)
    puts response.inspect
    
  end
  
  def price_in_cents
    
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

  private
  
  def purchase_options
    {
      :ip => "127.0.0.1",
      :billing_address => {
        :name     => "Ryan Bates",
        :address1 => "123 Main St.",
        :city     => "New York",
        :state    => "NY",
        :country  => "US",
        :zip      => "10001"
      }
    }
  end
  
  def validate_card
    unless credit_card.valid?
      credit_card.errors.full_messages.each do |message|
        errors.add_to_base message
      end
    end
  end
  
  def credit_card
    @credit_card ||= ActiveMerchant::Billing::CreditCard.new(

      :first_name         => "Jared", 
      :last_name          => "Brown",
      :number             => "4032038747093601",
      :month              => "8",
      :year               => Time.now.year+1,
      :verification_value => "123",
      :brand              => "visa"
    )
  end
end