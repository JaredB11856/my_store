class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :name
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active
      t.string  :category
      t.string  :brand
      t.string  :filter_primary
      t.string  :filter_secondary
      t.text    :details
      t.text    :main_image
      t.string  :product_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
