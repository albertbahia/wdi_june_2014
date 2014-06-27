get '/trainers' do
  erb :"trainers/index"
end

get '/trainers/new' do
  erb :"trainers/new"
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/show"
end

get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb :"trainers/edit"
end

post '/trainers/:id' do
  Trainer.find(params[:id]).update(params[:trainer])
  redirect("/trainers/#{params[:id]}")
end

post '/trainers' do
  new_trainer = Trainer.create(params[:trainer])
  redirect("/trainers/#{new_trainer.id}")
end

post '/trainers/:id/delete' do
  Trainer.find(params[:id]).pokemons = []
  Trainer.find(params[:id]).destroy
  redirect("/trainers")
end

# Bonus Route?
post '/trainers/:id/add_pokemon' do
  trainer = Trainer.find(params[:id])
  trainer.pokemons = []
  trainer.choose_pokemon(Pokemon.get_pokemon)
  redirect("/trainers/#{trainer.id}")
end
