class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string(:name)
      t.belongs_to(:team)
    end
  end
end
