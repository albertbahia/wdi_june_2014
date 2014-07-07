class AddAwesomeToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :awesome, :boolean
  end
end
