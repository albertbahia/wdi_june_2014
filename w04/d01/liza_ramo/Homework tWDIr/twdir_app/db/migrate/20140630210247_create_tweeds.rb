class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.string(:author)
      t.string(:content)
      t.text(:image_url)
      t.timestamps(:timestamps)
    end
  end
end
