## login stuff

helpers do
  def error(message)
    message
  end

  def generate_visit_key
    key = ""
    100.times do
      key << rand(10).to_s
    end
    key
  end
end

error_message = ""
user_key = nil

get '/sign_in' do
  @error_message = error_message
  error_message = ""
  erb :"login/index"
end

post '/sign_in' do
  user = User.find_by(username: params[:username].downcase)
  if user == nil || !user.verify_password(params[:password])
    error_message = "Incorrect username or password."
    redirect('/sign_in')
  else
    user_key = params[:visit_key]
    user.update({visit_key: user_key})
    redirect("/posts/#{user.username}/#{user.visit_key}")
  end
end

# new
get '/sign_up' do
  @error_message = error_message
  error_message = ""
  erb :"login/new"
end

# create
post '/sign_up' do
  if User.find_by(username: params[:user][:username])
    error_message = "That username is taken."
    redirect('/sign_up')
  elsif params[:user][:password].length < 8
    error_message = "Your password must be at least 8 characters long."
    redirect('/sign_up')
  elsif params[:user][:password] != params[:password_again]
    error_message = "Your passwords did not match."
    redirect('/sign_up')
  else
    params[:user][:username] = params[:user][:username].downcase
    user = User.create(params[:user])
    user_key = params[:user][:visit_key]
    redirect("/posts/#{user.username}/#{user.visit_key}")
  end
end

##----------------

get '/posts/:username/:visit_key' do
  if params[:visit_key] != user_key
    redirect("/")
  end
  @user = User.find_by(username: params[:username])
  erb :"posts/index"
end

get '/posts/:username/:visit_key/new' do
  if params[:visit_key] != user_key
    redirect("/")
  end

  @user = User.find_by(username: params[:username])

  erb :"posts/new"
end

get '/posts/:username/:visit_key/:post_id' do
  if params[:visit_key] != user_key
    redirect("/")
  end

  @user = User.find_by(username: params[:username])
  @post = Post.find(params[:post_id])
  erb :"posts/show"
end

get '/posts/:username/:visit_key/:post_id/edit' do
  if params[:visit_key] != user_key
    redirect("/")
  end
  @user = User.find_by(username: params[:username])
  @post = Post.find(params[:post_id])
  erb :"posts/edit"
end

post '/posts/:username/:visit_key' do
  Post.create(params[:post])
  redirect("/posts/#{params[:username]}/#{params[:visit_key]}")
end

post '/posts/:username/:visit_key/:post_id/update' do
  if params[:visit_key] != user_key
    redirect("/")
  end

  Post.find(params[:post_id]).update(caption: params[:caption])
  redirect("/posts/#{params[:username]}/#{params[:visit_key]}/#{params[:post_id]}")
end

post '/logout' do
  User.find(params[:user_id]).update(visit_key: nil)
  redirect('/')
end

post '/posts/:username/:visit_key/:post_id/delete' do
  if params[:visit_key] != user_key
    redirect("/")
  end

  Post.find(params[:post_id]).destroy
  redirect("/posts/#{params[:username]}/#{params[:visit_key]}")
end
