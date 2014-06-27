#Collections
# Index
get '/trainers' do
  @trainers = Trainer.all
  erb(:"trainers/index")
end

# New
get '/trainers/new' do
  erb(:"trainers/new")
end

# Create
post '/trainers' do
  new_trainer = Trainer.create(params[:trainer])
  redirect("/trainers/#{new_trainer.id}")
end

# Member
# Show
get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/show")
end

# Edit
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

# Destroy
post '/trainers/:id/remove' do
  trainer = Trainer.find(params[:id])
  trainer.destroy
  redirect('/trainers')
end

# Add Pokemon
post "/trainers/:id/add_pokemon" do
  @trainer = Trainer.find(params[:id])
  @trainer.pokemon << Pokemon.find(params[:pokemon_id])
  redirect("/trainers/#{@trainer.id}")
end
