class AddTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.string(:author)
      t.string(:content)
      t.text(:image_url)
      t.timestamps
    end
  end
end