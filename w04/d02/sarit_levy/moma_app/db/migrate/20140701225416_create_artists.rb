class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |artists_table|
      artists_table.string(:name)
      artists_table.text(:photo_url)
      artists_table.text(:nationality)
      artists_table.date(:birthday)
      artists_table.timestamps(:timestamps)
    end
  end
end
