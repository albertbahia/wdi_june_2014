class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |songs_table|
      songs_table.references :playlists
      songs_table.references :artist
      songs_table.string :title
      songs_table.string :album
      songs_table.string :preview_url
      songs_table.integer :price
    end
  end
end
