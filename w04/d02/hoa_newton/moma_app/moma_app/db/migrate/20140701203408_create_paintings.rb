class CreatePaintings < ActiveRecord::Migration
  def change
     create_table :paintings do |t|
    	t.string(:img_url)
    	t.string(:title)
    	t.integer(:year_painted)
    	t.string(:description)
    	t.timestamps
    end
  end
end
 