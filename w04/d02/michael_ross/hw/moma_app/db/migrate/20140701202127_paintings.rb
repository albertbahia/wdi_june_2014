class Paintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :img_url
      t.string :title
      t.integer :year_painted
      t.text :description
      t.references :artist
      t.timestamps :timestamp
    end
  end
end
