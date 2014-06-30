get '/trainers' do
  @trainers = Trainer.all
  erb(:"trainers/index")
end



get '/trainers/new' do
  erb(:"trainers/new")
end

post '/trainers' do
  new_trainer = Trainer.create(params[:trainer])
  redirect("/trainers/#{new_trainer.id}")
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/show")
end



get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/edit")
end



post '/trainers/:id' do
  trainer = Trainer.find(params[:id])
  trainer.update(params[:trainer])
  redirect("/trainers/#{trainer.id}")
end


post '/trainers/:id/delete' do
  trainer = Trainer.find(params[:id])
  trainer.destroy
  redirect("/trainers")
end

post '/trainers/:id/add_pokemon' do
  trainer = Trainer.find(params[:id])
  pokemon = Pokemon.get_pokemon
  trainer.choose_pokemon(pokemon)
  redirect("/trainers/#{trainer.id}")
end
