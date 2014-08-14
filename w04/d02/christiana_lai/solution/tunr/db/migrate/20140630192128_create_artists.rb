class CreateArtists < ActiveRecord::Migration
  def change
    create_table(:artists) do |t|
      t.string(:name)
      t.string(:nationality)
      t.text(:photo_url)
    end
  end
end
