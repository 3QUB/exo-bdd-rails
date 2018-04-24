class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.text :title
      t.text :body
      t.belongs_to :cours

      t.timestamps
    end
  end
end
