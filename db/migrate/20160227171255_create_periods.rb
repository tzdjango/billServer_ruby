class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :from
      t.string :to
      t.integer :statement_id

      t.timestamps null: false
    end
  end
end
