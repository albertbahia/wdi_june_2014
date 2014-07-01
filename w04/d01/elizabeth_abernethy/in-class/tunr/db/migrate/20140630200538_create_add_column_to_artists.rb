class CreateAddColumnToArtists < ActiveRecord::Migration
  def change
    create_table :add_column_to_artists do |t|
      add_column(:artists, :age, :integer)
    end
  end
end
