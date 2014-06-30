# Index
get '/images' do
	@images = Image.all
	erb(:"images/index")
end

# New
get '/images/new' do
	erb(:"images/new")
end

# Create
post '/images' do
	new_image = Image.create(params[:image])
	redirect("/images/#{new_image.id}")
end

# Show
get '/images/:id' do
	@image = Image.find(params[:id])
	erb(:"images/show")
end

# Edit
get '/images/:id/edit' do
	@image = Image.find(params[:id])
	erb(:"images/edit")
end

# Update
post '/images/:id' do
	image = Image.find(params[:id])
	image.update(params[:image])
	redirect("images/#{image.id}")
end

# Destroy
post '/images/:id/delete' do
	image = Image.find(params[:id])
	image.destroy
	redirect("/images")
end