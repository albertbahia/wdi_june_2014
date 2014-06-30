#index
get "/photos" do
  @photos = Photo.all
  erb(:"photos/index")
end

#new
get "/photos/new" do
  erb(:"photos/new")
end


#update
post "/photos/:id" do
  @photo = Photo.update(params[:photo])

  if @photo.save
    redirect "/photos/#{@photo.id}"
  else
    erb (:"photos/index")
  end

  # @photo.save
  # redirect("/photos/#{@photo.id}")
end


#create
post "/photos" do
  @photo = Photo.create(params[:photo])
  redirect("/photos/#{@photo.id}")
end

#edit
get "/photos/:id/edit" do
  @photo = Photo.find(params[:id])
  erb(:"photos/edit")
end


#show
get "/photos/:id" do
  @photo = Photo.find(params[:id])
  erb(:"photos/show")
end





#destroy
post "/photos/:id/delete" do
  Photo.find(params[:id]).destroy
  redirect("/photos")
end
