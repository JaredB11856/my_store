class Invoice < ApplicationRecord
  has_many :order_items
  has_one :shipping_address
  accepts_nested_attributes_for :order_items, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  accepts_nested_attributes_for :shipping_address

  belongs_to :user
end
