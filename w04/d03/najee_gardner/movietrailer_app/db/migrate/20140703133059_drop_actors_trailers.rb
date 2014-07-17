class DropActorsTrailers < ActiveRecord::Migration
  def change
    drop_table :actors_trailers
  end
end
