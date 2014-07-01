#index
get '/users' do
  @users = User.all
  erb(:"users/index")
end

#new - just show the new page with form
get '/users/new' do
  erb(:"users/new")
end

#edit - show the page with form for edit
get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb(:"users/edit")
end

#update
post '/users/:id' do
  user = User.find(params[:id])
  user.update(params[:user])
  redirect("/users/#{user.id}")
end

#show
get '/users/:id' do
  #@images = Image.where(user_id: User.find(params[:id]))

  @user = User.find(params[:id])
  erb(:"users/show")
end

#create - the form on the new page will come to this route to create and redirect
post '/users' do
  new_user = User.create(params[:user])
  redirect("/users/#{new_user.id}")
end

#delete
post '/users/:id/delete' do
  user = User.find(params[:id])
  user.destroy
  redirect('/users')
end
