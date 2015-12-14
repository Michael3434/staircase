class AddFieldToPost < ActiveRecord::Migration
  def change
    add_column :posts, :id_building, :integer
  end
end
