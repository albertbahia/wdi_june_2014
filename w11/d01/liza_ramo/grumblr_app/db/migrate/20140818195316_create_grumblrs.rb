class CreateGrumblrs < ActiveRecord::Migration
  def change
    create_table :grumblrs do |t|
      t.string :author
      t.text :content
      t.string :title
      t.text :image
      t.text :avatar
      t.timestamps
    end
  end
end
