class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.text(:name)
      t.text(:photo_url)
      t.belongs_to(:movie)
      
      t.timestamps 
    end
  end
end 


# #### Actor
# A actor should have:
# - a name
# - a photo_url
# - timestamps
