
#collection routes

#index - displaying the information of all objects of the Class Trainer
get '/trainers' do
    @trainers = Trainer.all
    erb(:"trainers/index")

end

=begin new - when a request comes in for a new trainer, the response is a new
       page with the form that takes info on the new trainer
=end
get '/trainers/new' do
  erb(:"trainers/new")
end

=begin create - User clicks a link to add a new trainer, the method is post. The
       server responds by creating a new trainer and redirecting the user to the
       show page of the newly created trainer.
=end
post '/trainers' do
  @trainer = Trainer.create(params[:trainer])
  redirect("/trainers/#{@trainer.id}")
end

#member routes

=begin #show - User clicks a link that requests the specific trainer based
       on the id defined in the path of href. The server responds with identifying
       the artist through the find method and then using their info in the view show
=end
get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainers/show")

end

=begin #edit - Request comes from a trainers show page. Since its a GET request,
      server just send back the show view of the particular trainer. When the page
      is rendered, erb embeds the information into the html thats sent back
      to the client.
=end
get '/trainers/:id/edit' do
  @trainer = Trainer.find(params[:id])
  erb(:"trainer/edit")
end

=begin #update - User clicks to update trainer. That trainers information is
updated on the server and the server responds with the new page of that trainer 

=end
put '/trainers/:id' do
  @trainer = Trainer.update(params[:id])
  redirect("/trainers/#{trainer.id}")
end

=begin # destroy - User clicks to delete trainer. Server executes the destroy method
on that trainers id in the db, and then sends back the index page of all trainers

=end
delete 'trainers/:id' do
  @trainer = Trainer.destroy(params[:id])
  erb(:"trainers/index")
end
