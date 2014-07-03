class AddMovies < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string(:title)
      t.integer(:year)
      t.text(:poster_url)
      t.string(:plot)
      t.timestamps
    end
  end
end
