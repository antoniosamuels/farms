class AddDetailsToFarm < ActiveRecord::Migration
  def change
    add_column :farm, :detail, :string
  end
end
