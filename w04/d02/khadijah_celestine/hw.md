# Commands

1. Create new rails app

		rails new moma_app --database postgresql
	
2. Edit Gemfile to include pry

		gem pry-rails
	
3. Run install the newly added gem

		bundle install
	
4. Create Artist Migration

		rails generate migration CreateArtists
												
	
5. Edit the migration file to include table attributes. ( /db/migrate )

	    t.string(:name)
      	t.string(:photo_url)
      	t.string(:nationality)
      	t.date(:birthday)
      	t.timestamps

6. Create the database

		rake db:create

7. Run the migration

		rake db:migrate

8. Create Painting Migration

		rails generate migration CreatePaintings
		
9. Edit the migration file to include table attributes. ( /db/migrate )

      	t.references(:artist)
      	t.string(:img_url)
      	t.string(:title)
      	t.integer(:year_painted)
      	t.text(:description)
      	t.timestamps
      	
10. Run the migration

		rake db:migrate
		
		
11. Create the models. **NEVER use rails generate model. ( app/models )

		class Artist < ActiveRecord::Base
  			has_many :paintings
		end
		
		class Painting < ActiveRecord::Base
  			belongs_to :artist
		end
		
12. Create some data in the seed file.

13. Run the seed file

		rake db:seed
		
14. Define the routes ( config/routes.rb )

		root to: '/artists'
		resources :artists, :paintings		

15. Create an ArtistsController that inherits from ApplicationController and defines the methods for the restful routes.

16. Create the corresponding views.

17. Create an PaintingsController that inherits from ApplicationController and defines the methods for the restful routes.

18. Create the corresponding views.
		


		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		



