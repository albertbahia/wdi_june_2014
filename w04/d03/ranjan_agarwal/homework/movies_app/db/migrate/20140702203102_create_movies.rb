class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string(:title)
      t.integer(:year)
      t.text(:poster_url)
      t.text(:plot)
      t.timestamps
    end
  end
end
