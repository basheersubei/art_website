class Artwork < ActiveRecord::Base

  belongs_to :artist

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :title, presence: true, length: { minimum: 2 }
  validates :avatar, presence: true

  validate :artist_id_exists

  protected
    # validates that no artwork is created with an invalid associated artist_id
    def artist_id_exists
        if !Artist.where(id: self.artist_id).exists? then
            errors.add(:artist_id, 'A valid artist ID is required!')
        end
    end

end
