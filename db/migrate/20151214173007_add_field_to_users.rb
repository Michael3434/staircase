class AddFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :apt_reference, :string
  end
end
