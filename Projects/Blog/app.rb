require 'sinatra'
require './models'
require 'byebug'
set :session_secret, ENV['SEI_SESSION_SECRET']
enable :sessions

get('/') do
    @posts = Post.all
    if session[:user_id] != nil
        @user = User.find(session[:user_id])
    end
    erb :index
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
	redirect '/dashboard'
end

get('/dashboard') do
    
    erb :dashboard, :layout => false
end

post('/dashboard') do 
    post = Post.create(
		title: params[:title],
  		image: params[:image_url],
        body: params[:body],
        user_id: session[:user_id]
	)
    redirect '/'
end

get('/edit/:id') do
    @post = Post.find_by(id: params[:id])
    erb :edit, :layout => false
end

post '/edit' do
    # @post = Post.find_by(id: params[:id])
    post = Post.update(
      title: params[:title],
      image: params[:image_url],
      body: params[:body],
      user_id: session[:user_id]    
    )
    redirect '/'
    erb :edit, :layout => false
end

get '/delete/:id' do
	post = Post.find_by(id: params[:id])
	post.destroy

	redirect '/'
end

get '/logout' do
    session[:user_id]
    session.clear
    redirect '/'
end