class AddPaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.text(:img_url)
      t.string(:title)
      t.date(:year_painted)
      t.string(:description)
      t.timestamps
      t.references(:artist)
    end
  end
end
