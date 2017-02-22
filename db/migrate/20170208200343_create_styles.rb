class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.string :name
      t.timestamps
    end
    # add_foreign_key :inventories, :products
  end
end
