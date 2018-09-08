class Product < ActiveRecord::Base
  include PgSearch
  extend FriendlyId
  has_many :order_items  
  enum status: { active: 0, inactive: 1 }
  validates_presence_of :category, :main_image

  pg_search_scope :search, against: [:name, :brand],
    using: { tsearch: { dictionary: "english" }} 

  default_scope { where(active: true) }

  friendly_id :product_id, use: :slugged
end