class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :country, null: false
      t.string :flag_url, null: false
      t.string :manager
      t.belongs_to :group

      t.timestamps
    end
  end
end
