class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_join_table :playlists, :songs, table_name: :playlists_songs do |t|
      t.index :playlist_id
      t.index :song_id
    end
  end
end
