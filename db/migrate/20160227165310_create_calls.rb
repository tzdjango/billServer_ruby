class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :called
      t.string :duration
      t.decimal :cost
      t.integer :callCharges_id

      t.timestamps null: false
    end
  end
end
