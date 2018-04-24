class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :parent_id
      
      t.belongs_to :user
      t.belongs_to :link
      t.timestamps
    end
  end
end
