class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string(:name)
      t.text(:photo_url)
      t.string(:nationality)
      t.string(:birthday)
      t.timestamps()
    end
  end
end
