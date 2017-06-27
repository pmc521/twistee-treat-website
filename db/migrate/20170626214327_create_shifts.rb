class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.string :day, null: false
      t.string :month, null: false
      t.string :year, null: false
      t.string :start, null: false
      t.string :finish, null: false

      t.timestamps
    end
  end
end
