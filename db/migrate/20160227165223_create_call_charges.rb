class CreateCallCharges < ActiveRecord::Migration
  def change
    create_table :call_charges do |t|
      t.decimal :total
      t.integer :bill_id

      t.timestamps null: false
    end
  end
end
