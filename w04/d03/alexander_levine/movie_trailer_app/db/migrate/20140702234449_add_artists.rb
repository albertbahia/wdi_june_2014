class AddArtists < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string(:name)
      t.text(:photo_url)
      t.timestamps
      t.references(:movie)
    end
  end
end
