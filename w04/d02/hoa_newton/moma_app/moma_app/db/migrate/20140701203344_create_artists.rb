class CreateArtists < ActiveRecord::Migration
  def change
   	create_table :artists do |t|
    	t.string(:name)
    	t.string(:photo_url)
    	t.integer(:birthday)
    	t.timestamps
    end
  end
end
