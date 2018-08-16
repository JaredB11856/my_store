class AddInvoiceToOrderItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_items, :invoice, foreign_key: true
  end
end
