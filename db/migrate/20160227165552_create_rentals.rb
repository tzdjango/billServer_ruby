class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :title
      t.decimal :cost
      t.integer :skyStore_id

      t.timestamps null: false
    end
  end
end
