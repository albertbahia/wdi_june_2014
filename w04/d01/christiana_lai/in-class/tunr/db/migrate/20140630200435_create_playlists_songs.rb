class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_table :playlists_songs do |t|
      t.references(:song)
      t.references(:playlist)
    end
  end
end
