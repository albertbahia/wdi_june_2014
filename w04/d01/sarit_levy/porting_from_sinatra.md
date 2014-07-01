# Porting Tun.r

Here are the steps to port Tun.r from Sinatra to Rails.

These steps assume you already have the tunr_db database set up using the
schema provided in the starter files.

## Create the app:

Let's create the new blank rails app. By default it'll use SQLite, so let's tell
it to use PostgreSQL instead:

    rails new tunr --database postgresql

## Update Configs

Modify config.yml to point to a database called `tunr_db` in development.

## Copy AR Model Files

Thankfully, our model files require no modification, since they were already
using ActiveRecord (part of Rails).

Simply copy over `artist.rb`, `artist.rb`, and `playlist.rb` into `app/models`.

## Test Models

We can now run the rails console (equivalent to our `playground.rb`) to test
everything out:

    rails console

From here, you can test all ActiveRecord statements, e.g.:

```ruby
artist.all
Artist.first.artists
```

## Setup Routes

Copy all the routes defined in your sinatra controller file, and convert them
into Rails-style routes in routes.rb. For example:

```ruby
# This in Sinatra:
get "/artists/new" do
  erb(:"artists/new")
end

post "/artists" do
  @artist = artist.create!(params[:artist])
  redirect("/artists/#{@artist.id}")
end

# Becomes this in routes.rb:
get  "artists/new" => "artists#new"
post "artists"     => "artists#create"
```

## Port Controller File

In rails, all controllers live in `app/controllers` and have a file name like
`artists_controller.rb`.

Additionally, controllers in Rails inherit from `ActionController::Base` either
directly, or by inheriting from another class which does. In most cases, you
should have a controller called `ApplicationController` which inherits from
`ActionController::Base`, so our Sinatra controllers will inherit from that.

Copy the contents of the contents of the Sinatra controller and convert each
block into a method. Make sure the method names match what you defined in the
router.

Convert all `redirect()` statements to `redirect_to()`. Replace all `erb()`
statements with `render()` statements (or omit them if the name of the file
matches the controller and action name).


## Copy Views

Copy over the `views/artists` folder into `app/views` in our Rails app. We used
the Rails convention in Sinatra, so the only thing we have to do is rename
each file from something like `new.erb` to `new.html.erb`.

Also, copy over the `layout.erb` file into
`app/views/layouts/application.html.erb`. Make sure to keep the Rails' generated
content in the `<head>` though.

## Start the Server and Test

Run the Rails server, and test everything out:

    rails server

Go to `localhost:3000/artists` to test it all out.

## Fix Authenticty Token Issues

Rails protects us from an attack called a Cross-Site Forgery Request or 'CSRF'.
It does this by embedding a unique key into each form it generates for us, and
rejecting non-GET requests without the a key.

To allow us to use non-Rails forms (until tomorrow), we need to comment out the
following line in `application_controller.rb`:

    protect_from_forgery with: :exception

## FIN

That's it! Rails isn't much different than sinatra, except it splits the conerns
of routing from controllers, and makes assumptions about what your files are
called.
