class AddUpcToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :upc, :string
  end
end
