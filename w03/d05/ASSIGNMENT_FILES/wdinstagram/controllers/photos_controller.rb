get('/photos') do
  @photos = Photo.order(date_posted: :desc)
  erb :'photos/index' 
end
get('/photos/new') do
  erb :'photos/new' 
end
post('/photos') do
  new_photo = Photo.create(params[:photo])
  redirect("/photos/#{new_photo.id}") 
end
get('/photos/:id') do
  @photo = Photo.find(params[:id]) 
  erb :'photos/show'
end
get('/photos/:id/edit') do
  @photo = Photo.find(params[:id])
  erb :'photos/edit' 
end
post('/photos/:id') do
  updated_photo = Photo.update(params[:id], params[:photo])
  redirect("/photos/#{updated_photo.id}")
end
post('/photos/:id/delete') do
  Photo.destroy(params[:id]) 
  redirect('/photos')
end