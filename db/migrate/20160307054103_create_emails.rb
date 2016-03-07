class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :content
      t.string :recipient

      t.timestamps null: false
    end
  end
end
