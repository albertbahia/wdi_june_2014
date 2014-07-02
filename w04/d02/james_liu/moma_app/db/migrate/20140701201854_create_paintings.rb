class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
    t.text(:img_url)
    t.string(:title)
    t.references(:artist)
    t.text(:year_painted)
    t.string(:description)
    t.timestamps
    end
  end
end
