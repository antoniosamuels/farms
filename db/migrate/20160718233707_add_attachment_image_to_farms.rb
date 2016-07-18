class AddAttachmentImageToFarms < ActiveRecord::Migration
  def self.up
    change_table :farm do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :farm, :image
  end
end
