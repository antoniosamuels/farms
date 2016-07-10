class CreateFarms < ActiveRecord::Migration
  def change
    create_table :farms do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
