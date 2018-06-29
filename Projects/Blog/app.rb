require 'sinatra'
require './models'
require 'byebug'
set :session_secret, ENV['SEI_SESSION_SECRET']
enable :sessions

# overall good job Erisay. There is a fair amount of repeated code inside some of the erb
# files. We could have multiple layout files. Come talk to me if you want more info.

get('/') do
    @posts = Post.all
    if session[:user_id] != nil
        @user = User.find(session[:user_id])
    end
    erb :index # we can only erb one file
    erb :posts
end

get('/signup') do
    erb :signup, :layout => false
end

post('/signup') do
	existing_user = User.find_by(email: params[:email])
	if existing_user != nil
		return redirect '/login'
	end

	user = User.create(
		first_name: params[:f_name],
		last_name: params[:l_name],
		email: params[:email],
		password: params[:password],
	)
	session[:user_id] = user.id
	redirect '/dashboard'
end

get('/login') do 
	erb :login, :layout => false
end

post('/login') do
	user = User.find_by(email: params[:email])
	if user.nil?
		return redirect '/signup'
	end

	unless user.password == params[:password]
		return redirect '/login'
	end

  session[:user_id] = user.id
  redirect '/'
end

get('/dashboard') do
  # should check if user is logged in here
  erb :dashboard, :layout => false
end

post('/dashboard') do
  # should check if user is logged in here
  post = Post.create(
		title: params[:title],
		image: params[:image_url],
    body: params[:body],
    user_id: session[:user_id]
	)
  redirect '/' 
end

get('/show/:id') do
  # should check if user is logged in here
  @post = Post.find_by(id: params[:id])
  erb :show
end

get('/edit/:id') do
  # should check if user is logged in here
  @post = Post.find_by(id: params[:id])
  erb :edit, :layout => false
end

post '/edit/:id' do
  # should check if user is logged in here
  @post = Post.find_by(id: params[:id])
  @post.update(
    title: params[:title],
    image: params[:image_url],
    body: params[:body],
    user_id: session[:user_id]    
  )
  redirect '/'
  # since you're redirecting, you don't need to render an erb
  # erb :edit, :layout => false
end

get '/delete/:id' do
  # should check if user is logged in here
	post = Post.find_by(id: params[:id])
	post.destroy

	redirect '/'
end

get '/logout' do
  session[:user_id] # this line isn't doing any :/
  session.clear
  redirect '/'
end