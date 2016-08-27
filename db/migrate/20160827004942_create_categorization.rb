class CreateCategorization < ActiveRecord::Migration
  def change
    create_table :categorization do |t|

      t.timestamps null: false
    end
  end
end
