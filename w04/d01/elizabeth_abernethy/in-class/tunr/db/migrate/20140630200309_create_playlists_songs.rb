class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_table :playlists_songs do |t|
      t.references :playlists
      t.references :songs
    end
  end
end
