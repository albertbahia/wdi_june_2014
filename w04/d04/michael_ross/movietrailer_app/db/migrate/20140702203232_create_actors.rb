class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :photo_url
      t.references :movie

      t.timestamps :timestamp
    end
  end
end
