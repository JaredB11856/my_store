class Invoice < ApplicationRecord
  has_many :order_items
  has_one :shipping_address
  has_one :billing_information
  accepts_nested_attributes_for :order_items, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  accepts_nested_attributes_for :shipping_address
  accepts_nested_attributes_for :billing_information

  belongs_to :user
end
