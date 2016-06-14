class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :link_id
      t.text :body
      t.references :user

      t.timestamps null: false
    end
    add_index :comments, :link_id
  end
end
