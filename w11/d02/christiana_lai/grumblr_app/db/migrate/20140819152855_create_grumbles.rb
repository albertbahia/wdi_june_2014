class CreateGrumbles < ActiveRecord::Migration
  def change
    create_table :grumbles do |t|
      t.text :author
      t.text :content
      t.text :title
      t.text :image
      t.text :avatar
      t.timestamps
    end
  end
end
