class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string(:name)
      t.text(:photo_url)
      t.belongs_to(:movie)

      t.timestamps
    end
  end
end
