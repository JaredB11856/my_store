class Invoice < ApplicationRecord
  has_many :order_items
  accepts_nested_attributes_for :order_items

  belongs_to :user
end
