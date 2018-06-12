class AddFieldnameToTablename < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :main_image, :text
    add_column :items, :price, :decimal
  end
end
