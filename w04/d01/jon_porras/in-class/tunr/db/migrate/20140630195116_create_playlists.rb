class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string(:name)
      t.references(:song)
    end
  end
end
