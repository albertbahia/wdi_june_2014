class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |playlists_table|
      playlists_table(:name)

    end
  end
end
