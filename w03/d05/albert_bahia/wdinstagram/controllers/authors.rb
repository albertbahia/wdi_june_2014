################################
# RESTful routes for Authors   #
################################

# COLLECTION
# index
get '/authors' do
  @authors = Author.all
  erb(:"authors/index")
end

# new
get '/authors/new' do
  erb(:"authors/new")
end

# create
post '/authors' do
  new_author = Author.create(params[:author])
  redirect("/authors/#{new_author.id}")
end

# MEMBER
# show
get '/authors/:id' do
    @author = Author.find(params[:id])
  erb(:"authors/show")
end

# edit
get '/authors/:id/edit' do
  @author = Author.find(params[:id])
  erb(:"authors/edit")
end

# update
post '/authors/:id' do
  author = Author.find(params[:id])
  author.update(params[:author])
  redirect("/authors/#{author.id}")
end

# destroy
post '/authors/:id/delete' do
  author = Author.find(params[:id])
  author.destroy
  redirect('/authors')
end
