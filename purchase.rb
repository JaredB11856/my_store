require "rubygems"
require "active_merchant"

ActiveMerchant::Billing::Base.mode = :test

gateway = ActiveMerchant::Billing::PaypalGateway.new(
    login: "jb_90210-facilitator_api1.hotmail.com",
    password: "2CV8QR9LBEFDVWP4",
    signiture: "A.XOJFbCOgWS3AGK6A0Equv15VTdAKWLzKA8r0ZD1XIxORXOFSm7TMXy"
  )

credit_card = ActiveMerchant::Billing::PaypalGateway.new(
    name:           "Jared Brown", 
    expiration_mm:  "04"
    expiration_yy:  "20"
    card_number:    "1111222233334444" 
    cvc:            "123" 
  )     

if credit_card.valid?
  puts "Credit card is valid."
  reponse = gateway.purchase(1000, credit_card, ip: "127.0.0.1")
  if response.success?
    puts "Purchase complete!"
  else
    puts "Error: #{response.message}"
  end
else
  puts "Error: credit card is not valid. #{credit_card.errors.full_messages('. ')}"
end