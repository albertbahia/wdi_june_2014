# --------------- COLLECTION ---------------

# index - display all photos
get "/images" do
  @images = Image.all
  erb(:"images/index")
end

# new - allow a user to create a new image
get "/images/new" do
  erb(:"images/new")
end

# create - save the new entry in the database
post "/images" do
  @image = Image.create!(params[:image])
  redirect("/images/#{@image.id}")
end

# --------------- MEMBER ---------------

#show - displays an individual image
get '/images/:id' do
  @image = Image.find(params[:id])
  erb(:"images/show")
end

# edit - allow a user to update an image
get '/images/:id/edit' do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

# update - updates the database
post '/images/:id' do
  image = Image.find(params[:id])
  image.update(params[:image])
  redirect("/images/#{image.id}")
end

# destroy - remove an image
post '/images/:id/delete' do
  image = Image.find(params[:id])
  image.destroy
  erb(:"images")
end
