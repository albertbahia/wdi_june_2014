# index displaying all photos
get "/images" do
  @images = Image.all
  erb(:"images/index")
end

# new allows the user to fill out a form to create new image
get "/images/new" do
  erb(:"images/new")
end

# create the ability to finalize the newly added data to the index.
post "/images" do
  @image = Image.create!(params[:image])
  redirect("/images/#{@image.id}")
end

# show an individual photo
get "/images/:id" do
  @image = Image.find(params[:id])
  erb(:"images/show")
end

# edit old photos.
get "/images/:id/edit" do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

# update. after editing the site will be updated
post "/images/:id" do
  image = Image.find(params[:id])
  image.update(params[:image])
  redirect("/images/#{image.id}")
end

# destroy. delete pics
post "/images/:id/delete" do
  image = Image.find(params[:id])
  image.destroy
  redirect("/images")
end
