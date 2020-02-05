class AddThumbImageToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :thumb_image, :text
  end
end
