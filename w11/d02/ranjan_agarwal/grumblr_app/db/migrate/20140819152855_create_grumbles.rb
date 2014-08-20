class CreateGrumbles < ActiveRecord::Migration
  def change
    create_table :grumbles do |t|
      t.string :author
      t.text :content
      t.string :title
      t.text :image
      t.text :avatar
      t.timestamps
    end
  end
end
