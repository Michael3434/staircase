class AddFildsToUser < ActiveRecord::Migration
  def change
    add_column :users, :show_phone, :boolean
    add_column :users, :is_owner, :boolean
    add_column :users, :is_pm, :boolean
    add_column :users, :is_syndic, :boolean
    add_column :users, :is_renter, :boolean
    add_column :users, :phone_number, :integer
  end
end
