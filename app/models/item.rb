class Item < ApplicationRecord
  enum status: { active: 0, inactive: 1 }
  extend FriendlyId
  friendly_id :item_id, use: :slugged

#TODO Add main_image, item_id & price
  validates_presence_of :category
end
