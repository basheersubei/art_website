class AddArtistIdToArtwork < ActiveRecord::Migration
  def change
      change_table :artworks do |t|
        t.references :artist, index: true
      end
  end
end
