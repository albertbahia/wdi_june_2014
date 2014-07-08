class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string(:name)
      t.text(:photo_url)
      t.timestamps(:timestamps)
      t.references(:movie)
    end
  end
end
