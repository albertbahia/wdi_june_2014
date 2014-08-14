class CreateTrailiers < ActiveRecord::Migration
  def change
    create_table :trailiers do |t|
    	t.string :title 
    	t.text :embed_url 
    	t.belongs_to :movie

    	t.timestamps 
    end
  end
end
