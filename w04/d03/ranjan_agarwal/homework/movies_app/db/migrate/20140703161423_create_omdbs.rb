class CreateOmdbs < ActiveRecord::Migration
  def change
    create_table :omdbs do |t|

      t.timestamps
    end
  end
end
