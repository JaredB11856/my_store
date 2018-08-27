class AddBillingInformaionIdToBillingInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :billing_informations, :billing_information_id, :integer
    add_index :billing_informations, :billing_information_id, unique: true
  end
end
