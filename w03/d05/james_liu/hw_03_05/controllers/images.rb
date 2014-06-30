# Your app should have the __Seven Deadly Routes__ routes:

# - An index route that will display all photos.
# - A show route that displays an individual image.
# - A new route allow a user to create a new image.
# - A create route that will save the new entry in the database
# - An edit route that will allow a user to update an image
# - An update route that will update the database
# - A delete route that will remove an image.


#index route
get "/images" do
  @images = Image.all
  erb(:"images/index")
end

#new route
get "images/new" do
  erb(:"images/new")
end

#create route
post "/images" do
  @image = Image.create!(params[:image])
  redirect("/images/#{@image.id}")
end

#show route
get "/images/:id" do
  @image = Image.find(params[:id])
  erb(:"images/show")
end

#edit route
get "/images/:id/edit" do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

#update route
put "/images/:id" do
  @image = Image.find(params[:image])
  erb(:"images/index")
end

#delete/destroy route
post "/images/:id/delete" do
  @image = Image.find(params[:id])
  erb(:"images/index")
end