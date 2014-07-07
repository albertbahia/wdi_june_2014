class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :photo_url
      t.string :position
      t.integer :skill_level
      t.belongs_to :team

      t.timestamps 
    end
  end
end