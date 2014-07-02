class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.text :img_url
      t.integer :year_painted
      t.text :description
      t.timestamps
      t.references :artist
    end
  end
end
