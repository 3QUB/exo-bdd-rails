class CreatePostCategoryJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :posts, :categories do |t|
      t.index :posts_id
      t.index :categories_id
    end
  end
end
