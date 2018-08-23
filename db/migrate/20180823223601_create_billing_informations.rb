class CreateBillingInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :billing_informations do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :cc_type
      t.string :cc_last_four
      t.references :user, foreign_key: true
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
