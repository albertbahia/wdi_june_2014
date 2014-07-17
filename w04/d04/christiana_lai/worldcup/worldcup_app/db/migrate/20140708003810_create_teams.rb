class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :country
      t.text :flag_url
      t.string :manager
      t.timestamps
    end
  end
end
