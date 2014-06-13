class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      # t.integer :artist_id

      # this line adds an integer column called `artist_id`.
#       t.references :artist, index: true

      t.timestamps
    end
  end
end
