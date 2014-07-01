# An index route that will display all photos.
get '/images' do
  @images = Image.all
  erb(:'images/index')
end

# - A new route allow a user to create a new image.
get '/images/new' do
  erb(:"images/new")
end

# - A create route that will save the new entry in the database
post '/images' do
  new_image = Image.create(params[:image])
  redirect("/images/#{new_image.id}")
end

# - A show route that displays an individual image.
get '/images/:id' do
  @image = Image.find(params[:id])
  erb(:"images/show")
end

# - An edit route that will allow a user to update an image
get '/images/:id/edit' do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

# - An update route that will update the database
post '/images/:id' do
  image = Image.find(params[:id])
  image.update(params[:image])
  redirect("/images/#{image.id}")
end

# - A delete route that will remove an image.
post '/images/:id/delete' do
  image = Image.find(params[:id])
  image.destroy
  redirect('/images')
end
