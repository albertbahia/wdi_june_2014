#index
get('/trainers') do
  @trainers = Trainer.all 
  erb :'trainers/index'
end

#new
get('/trainers/new') do 
  erb :'trainers/new'
end

#show
get('/trainers/:id') do
  @trainer = Trainer.find(params[:id])
  @pokemons = @trainer.pokemons
  erb :'trainers/show'
end

#create
post('/trainers') do
  new_trainer = Trainer.create(params[:trainer])
  redirect("/trainers/#{new_trainer.id}")
end

#edit
get('/trainers/:id/edit') do 
  @trainer = Trainer.find(params[:id])
  erb :'trainers/edit'
end

#update
post('/trainers/:id') do 
  trainer = Trainer.find(params[:id])
  trainer.update(params[:trainer])
  redirect("/trainers/#{trainer.id}")
end

#delete
post('/trainers/:id/delete') do 
  Trainer.destroy(params[:id])
  redirect('/trainers')
end

post('/trainers/:id/get_new_pokes') do 
  Trainer.find(params[:id]).choose_pokemon(Pokemon.get_pokemon)
  redirect("/trainers/#{params[:id]}")
end