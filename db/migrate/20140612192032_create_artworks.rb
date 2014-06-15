class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|

      # this line adds an integer column called `artist_id`.
      t.belongs_to :artist


      t.string :title


      t.timestamps
    end
  end
end
