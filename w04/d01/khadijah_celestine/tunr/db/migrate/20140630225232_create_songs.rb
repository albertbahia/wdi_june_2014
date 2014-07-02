class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string(:title)
      t.string(:album)
      t.string(:preview_link)
      t.integer(:price)
      t.references(:artist)
    end
  end
end
