class CreateActorsTrailers < ActiveRecord::Migration
  def change
    create_table :actors_trailers, id: false do |t|
      t.references :actor
      t.references :trailer
    end
  end
end
