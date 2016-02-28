class CreateReadData < ActiveRecord::Migration
  def change
    create_table :read_data do |t|
      t.string :data

      t.timestamps null: false
    end
  end
end
