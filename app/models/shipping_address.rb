class ShippingAddress < ApplicationRecord
  belongs_to :user
  belongs_to :invoice
end
