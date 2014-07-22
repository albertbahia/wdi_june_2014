class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :country
      t.string :flag_url
      t.string :manager
      t.references :group
    end
  end
end
