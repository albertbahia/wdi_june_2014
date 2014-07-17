class CreateActorsMovies < ActiveRecord::Migration
  def change
    create_table :actors_movies, id: false do |t|
    	t.belongs_to :actor
    	t.belongs_to :movie

    	t.timestamps
    end
  end
end
