class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.text(:img_url)
      t.string(:title)
      t.integer(:year_painted)
      t.string(:description)
      t.belongs_to(:artist)
      t.timestamps
    end
  end
end
