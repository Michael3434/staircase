class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :apartment_floor
      t.string :apartment_ref
      t.references :user, index: true, foreign_key: true
      t.references :building, index: true, foreign_key: true
      t.integer :owner_id
      t.integer :resident_id

      t.timestamps null: false
    end
  end
end
