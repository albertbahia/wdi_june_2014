class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_table :playlists_songs do |t|
      t.references(:artist)
      t.references(:song)
    end
  end
end
