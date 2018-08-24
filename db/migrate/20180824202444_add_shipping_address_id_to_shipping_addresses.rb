class AddShippingAddressIdToShippingAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :shipping_addresses, :shipping_address_id, :integer
    add_index :shipping_addresses, :shipping_address_id, unique: true
  end
end
