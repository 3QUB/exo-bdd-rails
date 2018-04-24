class CreatePosts < ActiveRecord::Migration[5.2]
  
  def change
    create_table :posts do |t|
      t.string :name
      t.text :body
      t.text :description

      t.belongs_to :users
      t.timestamps
    end
  end
end
