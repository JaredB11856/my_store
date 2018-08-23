class AddInvoiceToShippingAddress < ActiveRecord::Migration[5.0]
  def change
    add_reference :shipping_addresses, :invoice, foreign_key: true
  end
end
