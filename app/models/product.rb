class Product < ActiveRecord::Base
   enum status: { active: 0, inactive: 1 }
  extend FriendlyId
  friendly_id :product_id, use: :slugged
  validates_presence_of :category, :main_image

  has_many :order_items

  default_scope { where(active: true) }
end