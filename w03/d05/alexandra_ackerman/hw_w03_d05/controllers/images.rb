#COLLECTION

#index
get '/images' do
  @images = Image.all
  erb(:"images/index")
end

#new
get '/images/new' do
  erb(:"images/new")
end

#create
post "/images" do
  @image = Image.create!(params[:image])
  redirect("/images/#{@image.id}")
end

#MEMBER
#show
get "/images/:id" do
  @image = Image.find(params[:id])
  erb(:"images/show")
end

#edit
get "/images/:id/edit" do
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

#update
post '/images/:id' do
  image = Image.find(params[:id])
  image.update(params[:image])
  # @image = Image.update!(params[:image])
  redirect("/images/#{image.id}")
end

#destroy
post '/images/:id/delete' do
  image = Image.find(params[:id])
  image.destroy
  redirect('/images')
end
