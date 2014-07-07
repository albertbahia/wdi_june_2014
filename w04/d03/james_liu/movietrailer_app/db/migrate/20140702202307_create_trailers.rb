class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.text(:title)
      t.text(:embed_url)
      t.belongs_to(:movie)
      
      t.timestamps
    end
  end
end 


# #### Trailer
# A trailer should have:
# - a title
# - an embed_url
# - __NOTE__: Check out [how to embed a youtube video](https://developers.google.com/youtube/player_parameters#Embedding_a_Player)
# - timestamps