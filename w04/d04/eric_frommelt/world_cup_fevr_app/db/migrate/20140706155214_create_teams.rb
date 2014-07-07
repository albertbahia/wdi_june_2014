class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string(:country)
      t.string(:photo_url)
      t.string(:manager_name)
      t.belongs_to(:group)
      t.timestamps
    end
  end
end
