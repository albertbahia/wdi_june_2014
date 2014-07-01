class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |playlists_table|
      playlists_table.references :songs
      playlists_table.string :name
    end
  end
end
