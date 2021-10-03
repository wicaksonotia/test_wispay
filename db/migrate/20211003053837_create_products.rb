class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.string :image
      t.boolean :is_active
      t.timestamps
    end
  end
end
