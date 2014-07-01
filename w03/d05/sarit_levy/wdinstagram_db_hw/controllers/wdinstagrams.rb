###  RESTful routes for WDInstagrams  ###

# COLLECTION
# index
get '/wdinstagrams' do
  @wdinstagrams = WDInstagram.all
  erb(:"wdinstagrams/index")
end

# new
get '/wdinstagrams/new' do
  erb(:"wdinstagrams/new")
end

# create
post '/wdinstagrams' do
  new_wdinstagram = WDInstagram.create(params[:wdinstagram])
  redirect("/wdinstagrams/#{new_wdinstagram.id}")
end

# MEMBER
# show
get '/wdinstagrams/:id' do
  @wdinstagram = WDInstagram.find(params[:id])
  erb(:"wdinstagrams/show")
end

# edit
get '/wdinstagrams/:id/edit' do
  @wdinstagram = WDInstagram.find(params[:id])
  erb(:"wdinstagrams/edit")
end

# update
post '/wdinstagrams/:id' do
  wdinstagram = WDInstagram.find(params[:id])
  wdinstagram.update(params[:wdinstagram])
  redirect("/wdinstagrams/#{wdinstagram.id}")
end

# destroy
post '/wdinstagrams/:id/delete' do
  wdinstagram = WDInstagram.find(params[:id])
  wdinstagram.destroy
  redirect('/wdinstagrams')
end
