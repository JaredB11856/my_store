class CreatePurchaseOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :purchase_orders do |t|
      t.string :cc_first_name
      t.string :cc_last_name
      t.string :cc_month
      t.string :cc_year
      t.string :cc_brand
      t.string :user_ip
      t.string :billing_first_name
      t.string :billing_last_name
      t.string :billing_address_1
      t.string :billing_address_2
      t.string :billing_city
      t.string :billing_state
      t.string :billing_country
      t.string :billing_zip
      t.string :shippig_first_name
      t.string :shipping_last_name
      t.string :shipping_address_1
      t.string :shipping_address_2
      t.string :shipping_country
      t.string :shipping_state
      t.string :shipping_zip
      t.decimal :subtotal, precision: 12, scale: 3
      t.decimal :shipping, precision: 12, scale: 3
      t.decimal :total, precision: 12, scale: 3

      t.timestamps
    end
  end
end
