#rails generate migration AddAgeToArtists
#update the migration to add the column
#rake db:migrate

class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |artists_table|
      #describe the table; t is how we talk about the table
      #t.text is for longer text files
        artists_table.references :songs
        artists_table.string(:name)
        artists_table.string(:nationality)
        artists_table.text(:photo_url)
    end
  end
end
