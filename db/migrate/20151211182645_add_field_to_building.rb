class AddFieldToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :building_password, :string
  end
end
