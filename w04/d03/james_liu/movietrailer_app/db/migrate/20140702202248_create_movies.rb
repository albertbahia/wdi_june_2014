class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text(:title)
      t.integer(:year)
      t.text(:poster_url)
      t.text(:plot)
      
      t.timestamps
    end
  end
end 


# #### Movie
# A movie should have:
# - a title
# - a year
# - a poster_url
# - a plot
# - timestamps
