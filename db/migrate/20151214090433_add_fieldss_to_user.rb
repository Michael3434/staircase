class AddFieldssToUser < ActiveRecord::Migration
  def change
    add_column :users, :startnothere, :datetime
    add_column :users, :endnothere, :datetime
  end
end
