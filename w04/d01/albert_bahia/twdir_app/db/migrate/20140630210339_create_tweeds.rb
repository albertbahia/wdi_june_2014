class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.string(:author)
      t.text(:content)
      t.text(:image_url)
      t.timestamps
    end
  end
end
