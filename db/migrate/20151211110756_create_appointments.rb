class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone_number
      t.time :time

      t.timestamps null: false
    end
  end
end
