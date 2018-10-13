class ChangeCreditCardsToCards < ActiveRecord::Migration[5.0]
  def change
    rename_table :credit_cards, :cards
  end
end
