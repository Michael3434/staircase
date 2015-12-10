class AddFiledToBuilding < ActiveRecord::Migration
  def change
    add_column :buildings, :number_floor, :integer
  end
end
