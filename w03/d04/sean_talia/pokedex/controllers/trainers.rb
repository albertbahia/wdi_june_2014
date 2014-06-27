#index
get "/trainers" do
  @trainers = Trainer.all
  erb(:"trainers/index")
end

#new
get "/trainers/new" do
  erb(:"trainers/new")
end

#show
get "/trainers/:id" do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/show")
end

#create
post "/trainers" do
  @trainer = Trainer.create!(params[:trainer])
  redirect("/trainers/#{@trainer.id}")
end

#edit
get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/edit")
end

#update
post "/trainers/:id" do
  trainer = Trainer.find(params[:id])
  trainer.update(params[:trainer])
  redirect("/trainers/#{trainer.id}")
end

#delete
post '/trainers/:id/delete' do
  trainer = Trainer.find(params[:id])
  trainer.destroy
  redirect('/trainers')
end
