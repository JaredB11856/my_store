class PurchaseOrder < ApplicationRecord
  enum purchase_order_status_id: { cart: 0, processed: 1 }
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
      :first_name         => cc_first_name, 
      :last_name          => cc_last_name,
      :number             => card_number,
      :month              => cc_month,
      :year               => cc_year,
      :verification_value => card_verification,
      :brand              => card_type
    )
  end
end