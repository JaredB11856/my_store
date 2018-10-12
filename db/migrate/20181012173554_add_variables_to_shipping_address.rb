class AddVariablesToShippingAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :shipping_addresses, :country, :string
    add_column :shipping_addresses, :shipping_option, :string
    add_column :shipping_addresses, :first_name, :string
    add_column :shipping_addresses, :last_name, :string
  end
end
