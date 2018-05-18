require 'sinatra'

current_todos = []
id = 0

get '/' do
	@todos = current_todos

  erb :index
end

post '/notes' do
  @todos = current_todos
  name_notes = {
    name: params[:name_input],
    notes: params[:note_input]
  }

  @todos.push(name_notes)
  erb :notes
end

get '/edit/:id' do
  @todos = todos.find(params[:id])

  erb :edit
end





# post("/place-order")do
#   p params
#   f_name = params[:first_name]
#   redirect "/order-success/#{f_name}"
# end
