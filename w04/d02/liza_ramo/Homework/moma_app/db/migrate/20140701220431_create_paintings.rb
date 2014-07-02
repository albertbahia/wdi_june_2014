class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.text(:img_url)
      t.string(:title)
      t.date(:year_painted)
      t.string(:description)
      t.references(:artist_id)
      t.timestamps
    end
  end
end
