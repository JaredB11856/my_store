class AddOrdertoShippingAddresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :shipping_addresses, :order, foreign_key: true
  end
end
