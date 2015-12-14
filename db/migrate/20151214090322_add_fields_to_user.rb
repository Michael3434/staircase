class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :id_building_to_show, :integer
  end
end
