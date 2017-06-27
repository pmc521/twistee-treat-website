class Schedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :user_id, null: false
      t.integer :shift_id, null: false
      t.timestamps
    end

    add_index :schedules, [:shift_id, :user_id], unique: true
  end
end
