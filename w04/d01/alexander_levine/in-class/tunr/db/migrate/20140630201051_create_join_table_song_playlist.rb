class CreateJoinTableSongPlaylist < ActiveRecord::Migration
  def change
    create_join_table :songs, :playlists do |t|
      t.index [:song_id, :playlist_id]
      t.index [:playlist_id, :song_id]
    end
  end
end
