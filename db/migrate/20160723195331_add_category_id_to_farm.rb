class AddCategoryIdToFarm < ActiveRecord::Migration
  def change
    add_column :farm, :category_id, :interger
  end
end
