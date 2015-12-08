class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :address
      t.string :name
      t.integer :guardian_id
      t.integer :syndic_id

      t.timestamps null: false
    end
  end
end
