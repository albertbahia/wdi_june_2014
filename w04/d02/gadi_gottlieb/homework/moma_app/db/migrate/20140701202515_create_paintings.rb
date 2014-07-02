class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.text(:img_url)
      t.string(:title)
      t.integer(:year_painted)
      t.references(:artist)
      t.string(:description)
      t.timestamps
    end
  end
end
