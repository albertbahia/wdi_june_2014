class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      # t.string (gives you a varchar - short bits of info)
      # t.integer
      # t.decimal
      # t.boolean
      # t.date
      # t.text (storing a lot of text, not sure how much)
      t.string(:name)
      t.string(:nationality)
      t.text(:photo_url)
    end
  end
end
