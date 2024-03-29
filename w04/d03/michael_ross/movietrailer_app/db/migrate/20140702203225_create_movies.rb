class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :poster_url
      t.text :plot
      t.timestamps :timestamp
    end
  end
end
