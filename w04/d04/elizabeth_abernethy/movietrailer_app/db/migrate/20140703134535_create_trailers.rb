class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.string :embed_url
      t.timestamps
      t.belongs_to :movie
    end
  end
end
