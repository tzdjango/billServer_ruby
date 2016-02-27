class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.decimal :total
      t.integer :bill_id

      t.timestamps null: false
    end
  end
end
