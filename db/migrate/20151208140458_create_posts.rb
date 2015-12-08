class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.datetime :date
      t.string :post_type

      t.timestamps null: false
    end
  end
end
