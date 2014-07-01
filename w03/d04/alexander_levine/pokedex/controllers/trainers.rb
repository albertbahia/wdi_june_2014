get '/trainers' do
  @trainers = Trainer.all
  erb(:"trainers/index")
end

# new
get '/trainers/new' do
  erb(:"trainers/new")
end

get '/trainers/:id' do
  @trainers = Trainer.find(params[:id])
  erb(:"trainers/show")
end

# create
post '/trainers' do
  new_trainer = Trainer.create(params[:trainer])
  redirect("/trainers/#{new_trainer.id}")
end

get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/edit")
end

# Update
post '/trainers/:id' do
  trainer = Trainer.find(params[:id])
  trainer.update(params[:trainer])
  redirect("trainers/#{trainer.id}")
end

# destroy
post '/trainers/:id/delete' do
  trainer = Trainer.find(params[:id])
  trainer.destroy
  redirect('/trainers')
end

post '/trainers/:id/get_pokemon' do
  trainer = Trainer.find(params[:id])
  trainer.pokemons << Pokemon.all.sample(6)
  redirect("trainers/#{trainer.id}")
end
