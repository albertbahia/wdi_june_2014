class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
			t.string :title
			t.text :content
			t.belongs_to :user
			t.timestamps
    end
  end
end
