class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name

      t.belongs_to :cour
      t.timestamps
    end
  end
end
