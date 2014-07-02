class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |songs_table|
      songs_table(:title)
      songs_table(:album)
      songs_table(:preview_url
      songs_table(:artist_id)
      songs_table(:price)
    end
  end
end
