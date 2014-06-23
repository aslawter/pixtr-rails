class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, index: true, null: false
      t.integer :image_id, index: true, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
