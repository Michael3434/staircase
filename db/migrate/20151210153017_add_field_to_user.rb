class AddFieldToUser < ActiveRecord::Migration
  def change
    add_reference :users, :apartment, index: true, foreign_key: true
  end
end
