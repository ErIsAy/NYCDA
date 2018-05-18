require "sinatra"
require "unirest"
require "rubyjokes"


# get('/') do
#   "HELLO"
#
# end


get('/') do
  a = RubyJoke.new
  joke = params[:type]
  @final_joke = a.get_joke({limitTo: [joke]})
  erb :index
end

get('/:nsfw​') do
  joke = RubyJoke.new
  @final_joke = joke.get_joke({limitTo: ['explicit']})
  erb :index
end

get ('/surprise') do
  joke = RubyJoke.new
  @final_joke = joke.get_joke({limitTo: ['nerdy','explicit']})
  erb :index
end
