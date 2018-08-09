class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.string :name
      t.string :expiration_mm
      t.string :expiration_yy
      t.string :card_number
      t.string :cvc

      t.timestamps
    end
  end
end
