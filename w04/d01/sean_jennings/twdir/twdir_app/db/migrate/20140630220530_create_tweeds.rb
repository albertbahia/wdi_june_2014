class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.string :name
      t.text :content
      t.string :image_url
      t.timestamps
    end
  end
end
