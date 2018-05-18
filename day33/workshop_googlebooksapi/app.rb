require "googlebooks"
require "sinatra"


get('/') do

  erb :index
end

post '/' do
  book_input = params[:query]

  redirect "/search-results?title=#{book_input}"
end


get("/search-results") do
  p params
  book_input = params[:title]
  books = GoogleBooks.search(book_input)
  first_book = books.first
  @title = first_book.title
  @author = first_book.authors #=> 'F. Scott Fitzgerald'
  @isbn = first_book.isbn #=> '9781443411080'
  @image_link = first_book.image_link(:zoom => 6) #=> 'http://bks2.books.google.com/books?id=...'
  erb :index
end
