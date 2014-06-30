#index 
get "/images" do 
	@images = Image.all 
	erb(:"images/index")
end 

get "/images/new" do
	erb(:"images/new")
end 

get "/images/:id" do 
	@image = Image.find(params[:id])
	erb(:"images/show")
end 

post "/images" do 
	@image = Image.create!(params[:image])
	redirect("/images/#{@image.id}")
end 

get "/images/:id/edit" do
	@image = Image.find(params[:id])
	erb(:"images/edit")
end 

put "/images/:id" do 
	@image = Image.update!(params[:image])
	redirect("/images/#{@image.id}")
end 

post "/images/:id/delete" do 
	@image = Image.find(params[:id])
	erb(:"images/index")
end 
