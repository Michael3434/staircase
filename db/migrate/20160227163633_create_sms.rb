class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.text :content
      t.string :recipient

      t.timestamps null: false
    end
  end
end
