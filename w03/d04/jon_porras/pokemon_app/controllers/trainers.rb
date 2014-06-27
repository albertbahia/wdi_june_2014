#COLLECTION
#index
get '/trainers' do
  @trainers = Trainer.all
  erb(:"trainers/index")
end

#new
get '/trainers/new' do
  erb(:"trainers/new")
end

#create
post '/trainers' do
  new_trainer = Trainer.create(params[:trainer])
  redirect("/trainers/#{new_trainer.id}")
end

#MEMBER
#show
get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemons = Trainer.find(params[:id]).pokemons
  erb(:"trainers/show")
end

#edit
get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/edit")
end

#update
post '/trainers/:id' do
  trainer = Trainer.find(params[:id])
  trainer.update(params[:trainer])
  redirect("/trainers/#{trainer.id}")
end

#destory
post '/trainers/:id/delete' do
  trainer = Trainer.find(params[:id])
  trainer.destroy
  redirect('/trainers')
end

#add pokemon
post '/trainers/:id/add' do
  trainer = Trainer.find(params[:id])
  trainer.choose_pokemon(Pokemon.get_pokemon)
  redirect("/trainers/#{trainer.id}")
end
