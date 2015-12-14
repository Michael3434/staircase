class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_floor, :integer
  end
end
