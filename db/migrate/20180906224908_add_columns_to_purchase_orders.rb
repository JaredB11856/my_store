class AddColumnsToPurchaseOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :purchase_orders, :shipping_first_name, :string
    add_column :purchase_orders, :shipping_option, :string
    add_column :purchase_orders, :card_type, :string
  end
end
