json.extract! billing_information, :id, :name, :address_line_1, :address_line_2, :city, :state, :zip_code, :phone_number, :cc_type, :cc_last_four, :user_id, :invoice_id, :created_at, :updated_at
json.url billing_information_url(billing_information, format: :json)
