class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.string(:author)
      t.text(:content)
      t.text(:img_url)
      t.timestamps(:timestamp)
    end
  end
end
