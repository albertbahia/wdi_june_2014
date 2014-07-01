class CreateTweeds < ActiveRecord::Migration
  def change
    create_table :tweeds do |t|
      t.text :author
      t.text :content
      t.text :image_url
      t.timestamp :timestamp
    end
  end
end


# an author
# content
# an image_url -> optional on tweed creation
# a timestamp


 # Steps:
 #  Make sure new db is pointed to in database.yml folder OR 
 #  Create DB: rake db:create
 #  CMD Line: rails generate migration *FileName*
 #  Add: t.string/text(:*schema column name*)
 #        for foreign keys, use t.references : *class*
 #  CMD Line: rake db:migrate

 #  #To wipe database, rake db:migrate:reset
 #  #To seed a file, write a seed.rb file with active_record statements, then rake db:seed from app's main folder
