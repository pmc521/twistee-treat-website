class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :catagorie, null: false
      t.string :sub_catagorie
      t.string :size
      t.decimal :price, null: false, :precision => 10, scale: 2

      t.timestamps
    end
  end
end
