#new
get "/new" do
  erb(:"/new")
end

#create
post "/new" do
  @image = Image.create!(params[:image])
  redirect("/#{@image.id}")
end

#show
get "/:id" do
  @image = Image.find(params[:id])
  erb(:"/show")
end

#edit
get "/:id/edit" do
  @image = Image.find(params[:id])
  erb(:"/edit")
end

#update
post "/:id" do
  @image = Image.update!(params[:image])
  redirect("/#{@image.id}")
end

#destroy
post "/:id/delete" do
  @image = Image.find(params[:id])
  @image.destroy
  redirect(:"/index")
end
