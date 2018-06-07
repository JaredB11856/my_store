class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :category
      t.string :brand
      t.string :primary
      t.string :secondary
      t.text :details

      t.timestamps
    end
  end
end
