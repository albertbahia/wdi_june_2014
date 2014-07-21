class CreateTractors < ActiveRecord::Migration
  def change
    create_table :tractors do |t|
      t.string :model
      t.integer :price
      t.string :img_url
      t.integer :rating
      t.timestamps
    end
  end
end
