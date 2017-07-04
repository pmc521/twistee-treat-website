class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :amount_needed, null: false
      t.string :catagorie, null: false, default: "Misc"

      t.timestamps
    end
  end
end
