class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.text(:name)
      t.text(:photo_url)
      t.references :movie
      t.timestamps
    end
  end
end
