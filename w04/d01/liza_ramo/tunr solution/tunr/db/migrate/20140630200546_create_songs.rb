class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |songs_table|
      songs_table.string(:title)
      songs_table.string(:album)
      songs_table.text(:preview_url)
      songs_table.references(:artist)
      songs_table.integer(:price)
    end
  end
end
