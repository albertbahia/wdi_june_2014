class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.text :token
      t.boolean :logged_in

      t.timestamps
    end
  end
end
