class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.integer :product_id
      t.integer :waist
      t.integer :length
      t.integer :style_id
      t.integer :count
      t.references :product, index: true
      t.references :style, index: true
      t.timestamps
    end
    # add_foreign_key :inventories, :products
  end
end
