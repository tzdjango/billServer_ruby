class CreateSkyStores < ActiveRecord::Migration
  def change
    create_table :sky_stores do |t|
      t.decimal :total
      t.integer :bill_id

      t.timestamps null: false
    end
  end
end
