#Collection
#index
get '/trainers' do
  @trainers = Trainer.all
  erb(:"trainers/index")
end

# New
get "/trainers/new" do
  erb(:"trainers/new")
end
# Create
post "/trainers" do
  @trainer = Trainer.create!(params[:trainer])
  redirect("/trainers/#{@trainer.id}")
end
#Show
get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemon = Pokemon.find(params[:id])
  erb(:"trainers/show")
end

# edit
get "/trainers/:id/edit" do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/edit")
end

# update
put "/trainers/:id" do
  @trainer = Trainer.update!(params[:trainer])
  redirect("/trainers/#{@trainer.id}")
end

# destroy
post "/trainers/:id/delete" do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/index")
end
