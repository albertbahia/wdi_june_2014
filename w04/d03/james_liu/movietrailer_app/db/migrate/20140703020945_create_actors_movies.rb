class CreateActorsMovies < ActiveRecord::Migration
  def change
    create_table :actors_movies do |t|
      t.references(:actors)
      t.references(:movies)
    end
  end
end
