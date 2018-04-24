class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.text :title
      t.text :url

      t.belongs_to :user
      t.timestamps
    end
  end
end
