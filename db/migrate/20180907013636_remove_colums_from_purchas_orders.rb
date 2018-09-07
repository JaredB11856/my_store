class RemoveColumsFromPurchasOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :purchase_orders, :shippig_first_name, :string
    remove_column :purchase_orders, :cc_brand, :string
  end
end
