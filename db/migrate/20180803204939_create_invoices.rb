class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :tracking
      t.decimal :total,  precision: 12, scale: 3 
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
