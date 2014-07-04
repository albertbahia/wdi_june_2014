class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string(:title)
      t.string(:year)
      t.text(:poster_url)
      t.belongs_to(:actor)
      t.timestamps
    end
  end
end
