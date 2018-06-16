class Item < ApplicationRecord
  extend FriendlyId
  friendly_id :item_id, use: :slugged
end
