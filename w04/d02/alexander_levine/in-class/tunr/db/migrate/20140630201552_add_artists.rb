class AddArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string(:name)
      t.text(:photo_url)
      t.string(:nationality)
      t.string(:age)
    end
  end
end
