class Order < ActiveRecord::Base
  enum order_status_id: { cart: 0, placed: 1 }
  belongs_to :order_status
  has_many :order_items
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.order_status_id = 'cart'
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end