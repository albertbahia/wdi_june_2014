class CreateArtists < ActiveRecord::Migration
  def change
    create_table(:artists) do |t|
      #t.string(varchar(255))
      #t.integer
      #t.devimal
      #t.boolean
      #t.text more flexible, can be moret then 255 characters
      t.string(:name)
      t.integer(:age)
      t.string(:nationality)
      t.text(:photo_url)
    end
  end
end
