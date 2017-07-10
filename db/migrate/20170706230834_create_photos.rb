class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :photo, null: false
      t.string :name, unique: true, null: false

      t.timestamps
    end
  end
end
