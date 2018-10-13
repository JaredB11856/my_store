class AddCardTypeToCreditCards < ActiveRecord::Migration[5.0]
  def change
    add_column :credit_cards, :card_type, :string
  end
end
