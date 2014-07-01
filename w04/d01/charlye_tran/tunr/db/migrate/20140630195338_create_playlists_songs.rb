class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_join_table :playlists, :songs do |playlists_songs|
    end
  end
end
