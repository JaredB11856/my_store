class AddOrderToBillingInformations < ActiveRecord::Migration[5.0]
  def change
    add_reference :billing_informations, :order, foreign_key: true
  end
end
