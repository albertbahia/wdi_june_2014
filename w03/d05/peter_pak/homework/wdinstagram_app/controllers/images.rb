# index
get '/images/' do
  @image = Image.all
  erb(:"images/index")
end

# new
get '/images/new' do
  erb(:"images/new")
end

# create (to database)
post '/images' do
  newimage = Image.create(params[:image])
  redirect("/images/#{newimage.id}")
end

# show individual image
get '/images/:id' do
  @image = Image.find(params[:id])
  erb(:"images/show")
end

# update image in database
post '/images/:id' do
  update = Image.find(params[:id])
  update.update(params[:image])
  redirect("/images/#{update.id}")
end

# edit
get '/images/:id/edit' do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

# DESTROY!!
post '/images/:id/delete' do
  image = Image.find(params[:id])
  image.destroy
  redirect("/images/")
end
