class AddVariablesToBillingInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :billing_informations, :country, :string
    add_column :billing_informations, :first_name, :string
    add_column :billing_informations, :last_name, :string
  end
end
