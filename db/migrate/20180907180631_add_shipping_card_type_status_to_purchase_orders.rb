class AddShippingCardTypeStatusToPurchaseOrders < ActiveRecord::Migration[5.0]
  def change    
    add_column :purchase_orders, :tracking, :string
    add_column :purchase_orders, :purchase_order_status_id, :integer
  end
end
