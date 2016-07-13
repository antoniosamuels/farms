class CreateFarm < ActiveRecord::Migration
  def change
    create_table :farm do |t|
      t.string :address
      t.string :hours
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
