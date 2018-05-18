require 'sinatra'

current_todos = []

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
