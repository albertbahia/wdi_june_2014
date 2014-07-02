class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |paintings_table|
      paintings_table.text(:img_url)
      paintings_table.string(:title)
      paintings_table.integer(:year_painted)
      paintings_table.text(:description)
      paintings_table.timestamps(:timestamps)
      paintings_table.references(:artist)

    end
  end
end
