class CreateHoots < ActiveRecord::Migration
  def change
    create_table :hoots do |t|
      t.string :content
      t.string :author
      t.timestamps
    end
  end
end
