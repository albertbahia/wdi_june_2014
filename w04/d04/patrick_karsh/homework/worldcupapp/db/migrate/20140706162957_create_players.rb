class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.belongs_to :team 
    	t.string :name 
    	t.text :photo_url 
    	t.string :position
    	t.integer :skill  

    	t.timestamp 
    end
  end
end
