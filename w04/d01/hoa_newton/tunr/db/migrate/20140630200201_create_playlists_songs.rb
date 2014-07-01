class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_table :playlists_songs do |t|
    	t.references :song, id: true
    	t.references :playlist, id:true
    end
  end
end
