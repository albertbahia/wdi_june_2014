class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string(:title)
      t.string(:album)
      t.text(:preview_url)
      t.integer(:artist_id)
      t.integer(:price)
    end
  end
end
