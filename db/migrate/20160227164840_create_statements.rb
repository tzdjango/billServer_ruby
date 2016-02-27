class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string :generated
      t.string :due
      t.integer :bill_id

      t.timestamps null: false
    end
  end
end
