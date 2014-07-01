class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |tweeds_table|
      tweeds_table.string(:author)
      tweeds_table.text(:content)
      tweeds_table.string(:image_url)
      tweeds_table.timestamps
    end
  end
end
