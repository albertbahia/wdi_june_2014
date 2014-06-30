# - An index route that will display all photos.
# - A show route that displays an individual image.
# - A new route allow a user to create a new image.
# - A create route that will save the new entry in the database
# - An edit route that will allow a user to update an image
# - An update route that will update the database
# - A delete route that will remove an image.

#index
get '/images' do
  @images = Image.all
  erb(:'images/index')
end

#new
get '/images/new' do
  erb(:'images/new')
end

#show
get '/images/:id' do
  @image = Image.find(params[:id])
  erb(:'images/show')
end

#create
post '/images' do
  @image = Image.create!(params[:image])
  redirect("/images/#{@image.id}")
end

#edit
get "/images/:id/edit" do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

#update
post "/images/:id" do
  image = Image.find(params[:id])
  image.update(params[:image])
  redirect("/images/#{image.id}")
end

# destroy
get "/images/:id/delete" do
  @image = Image.find(params[:id])
  @image.destroy
  redirect("/images")
end
