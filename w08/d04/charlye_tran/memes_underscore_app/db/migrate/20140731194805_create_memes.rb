class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :name
      t.integer :humor_level
      t.string :image_url

      t.timestamps
    end
  end
end
