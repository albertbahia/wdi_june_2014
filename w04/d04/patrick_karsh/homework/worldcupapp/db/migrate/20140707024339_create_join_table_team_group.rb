class CreateJoinTableTeamGroup < ActiveRecord::Migration
  def change
    create_join_table :teams, :groups do |t|
      t.index [:team_id, :group_id]
      t.index [:group_id, :team_id]
    end
  end
end
