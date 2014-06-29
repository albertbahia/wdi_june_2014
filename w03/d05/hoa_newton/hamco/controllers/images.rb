require 'pry'

#index
get "/images" do
  	@images = Image.all
	erb(:"/images/index")
end

#new
get "/images/new" do 
	erb(:"/images/new")
end

#show indivisual image
get "/images/:id" do
	@image = Image.find(params[:id])
	erb(:"/images/show")
end

# create
post "/images" do
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
	@image = Image.find(params[:id])
  	if @image.update_attributes(params[:image])
    	redirect "/images/#{@image.id}"
  	else
    	erb :"images/edit"
  	end
end