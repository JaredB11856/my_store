class AddTrackingToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :tracking, :string
  end
end
