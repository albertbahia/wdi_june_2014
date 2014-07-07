class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :photo_url, null: false
      t.string :position, null: false
      t.integer :skill_level
      t.belongs_to :team

      t.timestamps
    end
  end
end
