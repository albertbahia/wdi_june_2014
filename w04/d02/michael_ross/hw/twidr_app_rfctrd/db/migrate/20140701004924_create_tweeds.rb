class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.string :author
      t.string :content
      t.string :image_url
      t.timestamps :timestamp
    end
  end
end
