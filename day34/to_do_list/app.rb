require "sinatra"
require "mailgun"
current_todos = []
id = 1

get '/' do
	@todos = current_todos

  erb :index
end

post '/notes' do
	mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
# Define your message parameters
message_params =  { from: 'erisay_22@hotmail.com',
                    to:   'erisaypr@gmail.com',
                    subject: 'The Ruby SDK is awesome!',
                    html: erb(:mail_template)
                  }

# Send your message through the client
mg_client.send_message(ENV['MAILGUN_API_DOMAIN'], message_params)

  @todos = current_todos
  name_notes = {
    id: id,
    name: params[:name_input],
    notes: params[:note_input]
  }

  @todos.push(name_notes)
  id += 1
  erb :notes
end

get '/edit/:id' do
  # @todos = current_todos[:id]

  erb :edit
end





# post("/place-order")do
#   p params
#   f_name = params[:first_name]
#   redirect "/order-success/#{f_name}"
# end
