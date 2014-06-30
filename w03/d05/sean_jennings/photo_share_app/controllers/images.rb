=begin this file contains the routes for the application. The root route is in
       the server.rb file
=end

=begin from the home page, a user clicks on a link to view all photos.
       the server acts on the '/photos' request by getting all the information
       about images from the db. Server then responds with images/index page
       which display each image within its own div.

=end

#index route
=begin takes a request from home page for all images. Server gathers all images
from db and then loads them via a loop on @images to the images/index view
=end
get "/images" do
  @image = Image.all
  erb(:"images/index")
end

#new route
=begin user clicks a button that leads them to a page with a form that takes
the information of the new photo.
=end
get "/images/new"do
  erb(:"images/new")
end

#create route
=begin input of information into a form that created a new photo on the server.
       Server then redirects to /images which sends client index page showing all
       the photos.
=end
post "/images" do
  @image = Image.create(params[:image])
  redirect("/images")
end

#show route
=begin user clicks on an image from the index page. each image has an id.
       Server finds that image by id and sends back a show page with the image
       information loaded into the html.
=end
get "/images/:id" do
  @image = Image.find(params[:id])
  erb(:"images/show")
end

#edit route
=begin from an individual images show page, user
=end
get "/images/:id/edit" do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

#update route
put "/images/:id" do
  @image = Image.find(params[:id]).update(params[:image])
    redirect("/images/#{@image.id}")
end

#destroy route
post "/images/:id/delete" do
  @image = Image.destroy(params[:id])
  redirect("/images")
end
