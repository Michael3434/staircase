class ChangeDataTypeForEmail < ActiveRecord::Migration
  def change
    change_table :emails do |t|
      t.change :content, :text
    end
  end
end
