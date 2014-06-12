class AddAttachmentAvatarToArtworks < ActiveRecord::Migration
  def self.up
    change_table :artworks do |t|
      t.attachment :avatar
      t.attachment :avatar_file_name
      t.attachment :avatar_content_type
      t.attachment :avatar_file_size
      t.attachment :avatar_update_at
    end
  end

  def self.down
    drop_attached_file :artworks, :avatar
    drop_attached_file :artworks, :avatar_file_name
    drop_attached_file :artworks, :avatar_content_type
    drop_attached_file :artworks, :avatar_file_size
    drop_attached_file :artworks, :avatar_update_at
  end
end
