class AddAttachmentItemImageToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :item_image
    end
  end

  def self.down
    remove_attachment :photos, :item_image
  end
end
