class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.decimal :amount, null: false, :precision => 10, scale: 2
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.integer :number, null: false

      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
