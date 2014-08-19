class CreateGrumbles < ActiveRecord::Migration
  def change
    create_table :grumbles do |t|
      t.string  :author
      t.string  :title
      t.string  :content
      t.string  :image
      t.string  :avatar

      t.timestamps
    end
  end
end
