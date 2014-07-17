class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.string(:author)
      t.text(:content)
      t.string(:image_url)
      t.timestamps(:time_stamp)
    end
  end
end
