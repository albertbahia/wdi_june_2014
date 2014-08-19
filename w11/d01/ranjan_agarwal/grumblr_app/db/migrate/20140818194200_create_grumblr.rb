class CreateGrumblr < ActiveRecord::Migration
  def change
    create_table :grumblrs do |t|
      t.string :author
      t.string :title
      t.text   :content
      t.text   :image
      t.text   :avatar

      t.timestamps
    end
  end
end
