class CreateApartmentUsers < ActiveRecord::Migration
  def change
    create_table :apartment_users do |t|
      t.references :apartment, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
