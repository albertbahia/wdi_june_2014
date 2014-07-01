class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.string(:title)
    	t.string(:album)
    	t.string(:preview_url)
    	t.references :aritst, id: true
    	t.integer(:price)
    end
  end
end
