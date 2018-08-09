json.extract! credit_card, :id, :name, :expiration_mm, :expiration_yy, :card_number, :cvc, :created_at, :updated_at
json.url credit_card_url(credit_card, format: :json)
