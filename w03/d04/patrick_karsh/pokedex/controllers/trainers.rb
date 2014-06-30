get "/trainers" do
  @trainers = Trainer.all
  erb(:"trainers/index")
end

get "/trainers/new" do
  erb(:"trainers/new")
end

get "/trainers/:id" do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/show")
end

post "/trainers" do
  @trainer = Trainer.create!(params[:trainer])
  redirect("/trainers/#{@trainer.id}")
end

get "/trainers/:id/edit" do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/edit")
end

post "/trainers/:id/delete" do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/index")
end