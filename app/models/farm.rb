class Farm < ActiveRecord::Base
  has_attached_file :image, styles: { :small => "200x400#", :large => "700x400#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
