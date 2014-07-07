class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string(:image_url)
      t.string(:title)
      t.integer(:year_painted)
      t.text(:description)
      t.timestamps
    end
  end
end
