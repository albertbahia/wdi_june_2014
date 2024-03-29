#index
get '/images' do
  @images = Image.all
  erb(:"images/index")
end

#new - just show the new page with form
get '/images/new' do
  erb(:"images/new")
end

#edit - show the page with form for edit
get '/images/:id/edit' do
  @user = User.find(Image.find(params[:id]).user_id)
  @image = Image.find(params[:id])
  erb(:"images/edit")
end

#update
post '/images/:id' do
  image = Image.find(params[:id])
  image.update(params[:image])
  redirect("/images/#{image.id}")
end

#show
get '/images/:id' do
  @user = User.find(Image.find(params[:id]).user_id)
  @image = Image.find(params[:id])
  erb(:"images/show")
end

#create - the form on the new page will come to this route to create and redirect
post '/images' do
  new_img = Image.create(params[:image])
  #the :image in params refers to the hash that is created when we specified in the new.erb form we wanted the thing to be called image
  redirect("/images/#{new_img.id}")
end

#delete
post '/images/:id/delete' do
  image = Image.find(params[:id])
  image.destroy
  redirect('/images')
end
