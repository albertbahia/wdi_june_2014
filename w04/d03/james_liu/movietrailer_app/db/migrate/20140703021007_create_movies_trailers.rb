class CreateMoviesTrailers < ActiveRecord::Migration
  def change
    create_table :movies_trailers do |t|
      t.references(:movies)
      t.references(:trailers)
    end
  end
end
