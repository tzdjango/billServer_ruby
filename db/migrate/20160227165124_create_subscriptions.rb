class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :type
      t.string :name
      t.decimal :cost
      t.integer :package_id

      t.timestamps null: false
    end
  end
end
