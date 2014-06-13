class AddAttachmentAvatarToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :artworks, :avatar
  end
end
