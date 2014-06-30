#new
get '/images/new' do
  erb(:"images/new")
end

#create
post '/images' do
  @image = Image.create(params[:image])
  redirect("images/#{@image.id}")
end

#show
get '/images/:id' do
  @images = Image.find(params[:id])
  erb(:"images/show")
end

#edit
get '/images/:id/edit' do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

#update
post '/images/:id' do
  @image = Image.find(params[:id])
  @image.update(params[:image])
  redirect("images/#{@image.id}")
end

#destroy
post "/images/:id/delete" do
  @image = Image.find(params[:id])
  @image.destroy
  redirect("/")
end
