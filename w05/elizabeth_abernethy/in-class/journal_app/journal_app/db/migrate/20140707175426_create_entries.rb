class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :content
      t.timestamps
      t.belongs_to :user
    end
  end
end
