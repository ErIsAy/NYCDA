require "sinatra"

get('/') do
erb (:index)
end

get('/contact-us') do
  @contacts = [
    {title:'President', name:'Steve Jobs'},
    {title:'CEO', name:'Tim Cook'},
    {title:'Designer', name:'john Ives'}
  ]
erb(:contact_us)
end

get('/about') do
erb(:about)
end

get('/order') do
erb(:order)
end

post("/place-order")do
  p params
  f_name = params[:first_name]
  redirect "/order-success/#{f_name}"
end

get('/order-success/:person_name') do
    @name_to_display = params[:person_name]
    @time = Time.new
    # favorite_dog = params[:favorite_dog]
  # "Hello #{name_to_display.capitalize}, Welcome. Your favorite dog is #{favorite_dog}"
  erb(:person_greeting)
end
