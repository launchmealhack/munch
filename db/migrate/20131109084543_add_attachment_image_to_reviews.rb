class AddAttachmentImageToReviews < ActiveRecord::Migration
  def self.up
    change_table :reviews do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :reviews, :image
  end
end
