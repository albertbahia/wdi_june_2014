class AddAgeToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :age, :integer
  end
end
