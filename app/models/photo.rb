class Photo < ActiveRecord::Base
  belongs_to :item
  has_attached_file :item_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :item_image, :content_type => /\Aimage\/.*\Z/
  validates :item_id, :presence => true
end
