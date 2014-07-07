class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.belongs_to :group
    	t.string :country 
    	t.text :flag_url
    	t.string :manager 
    end
  end
end
