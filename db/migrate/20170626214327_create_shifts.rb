class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.string :date, null: false
      t.string :start, null: false
      t.string :finish, null: false

      t.timestamps
    end
  end
end
