class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.text(:img_url)
      t.string(:title)
      t.integer(:year_painted)
      t.text(:description)
      t.timestamps(:timestamps)
      t.references :artist
    end
  end
end
