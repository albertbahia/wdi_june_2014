class AddTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string(:title)
      t.text(:embed_url)
      t.timestamps
      t.references(:movie)
    end
  end
end
