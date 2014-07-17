class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string(:name)
      t.text(:photo_url)
      t.timestamps
      t.integer(:movie_id)
    end
  end
end
