class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |tweeds_table|
      tweeds_table.string :author
      tweeds_table.string :content
      tweeds_table.text   :image_url
      tweeds_table.date   :timestamp
    end
  end
end
