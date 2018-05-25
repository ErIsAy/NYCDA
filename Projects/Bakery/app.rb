require "sinatra"
require "mailgun"

require "./cake_class"
require "./cookie_class"
require "./muffin_class"

get "/" do
 erb :index
end

post "/" do
  @first_name = params[:first_name]
  @last_name = params[:last_name]
  @email = params[:email]
  mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])
  message_params =  { from: 'erisay_22@hotmail.com',
                      to:   @email,
                      subject: 'LA PANADERIA Montly Catalog',
                      html: erb(:mail_template)
                }
  mg_client.send_message(ENV['MAILGUN_API_DOMAIN'], message_params)
  erb :index
end

get "/home/cookies" do
  my_cookies = Cookies.new("Chocolate Chip", "$4", "/images/BAKERY-STYLE-CHOCOLATE-CHIP-COOKIES-9-768x768.jpg")
  my_cookies_two = Cookies.new("Hot Cocoa", "$5", "/images/Hot-Cocoa-Cookies-Square-768x768.jpg")
  my_cookies_three = Cookies.new("Buttermilk", "$4", "/images/Buttermilk-101-square-02-550x550.jpg")
  my_cookies_four = Cookies.new("Gingerdoodle", "$5", "/images/Gingerdoodle-Cookies-Square-768x768.jpg")
  my_cookies_five = Cookies.new("Macadamia-Oat", "$5", "/images/Macadmia-Oat-Scones.jpg")
  my_cookies_six = Cookies.new("Black & White Chippers", "$5", "/images/black-and-white-chippers.jpg")
  @cookies = [my_cookies, my_cookies_two, my_cookies_three, my_cookies_four, my_cookies_five, my_cookies_six]
  erb :cookies
end

get "/home/muffins" do
  my_muffins = Muffins.new("Biscoff Stuffed Pumpkin", "$5", "/images/Biscoff-Filled-Pumpkin-Mini-Muffins-Square-550x550.jpg")
  my_muffins_two = Muffins.new("Peanut Butter Chocolate Chip", "$6", "/images/Peanut-Butter-Chocolate-Chip-Muffins.jpg")
  my_muffins_three = Muffins.new("Apple Crumble", "$5", "/images/apple-crumble-muffins.jpg")
  my_muffins_four = Muffins.new("Blueberry Raspberry", "$7", "/images/blueberryraspberrymuffin1.jpg")
  my_muffins_five = Muffins.new("Chocolate Chip", "$8", "/images/3937641731_b2381b96b9.jpg")
  my_muffins_six = Muffins.new("Carrot", "$7", "/images/3792682450_32a7988a14.jpg")
  @muffins = [my_muffins, my_muffins_two, my_muffins_three, my_muffins_four, my_muffins_five, my_muffins_six]
  erb :muffins
end

get "/home/cakes" do
  my_cakes = Cakes.new("Coconut Zebra", "$10", "/images/zebracake-21.jpg")
  my_cakes_two = Cakes.new("Chocolate Lava", "$20", "/images/Chocolate-Lava-Cakes.jpg")
  my_cakes_three = Cakes.new("Pumpkin Spice Coffee", "$10", "/images/Pumpkin-Spice-Coffee-Cake-Square-768x768.jpg")
  my_cakes_four = Cakes.new("Lemon Bundt", "$10", "/images/Lemon-Bundt-Cake-Square-550x550.jpg")
  my_cakes_five = Cakes.new("Dulce de Leche", "$10", "/images/Dulce-de-Leche-Cheesecake-Bars-Square-550x550.jpg")
  my_cakes_six = Cakes.new("Chocolate Caramel Poke", "$10", "/images/Chocolate-Caramel-Poke-Cake-Square-550x550.jpg")
  @cakes = [my_cakes, my_cakes_two, my_cakes_three, my_cakes_four, my_cakes_five, my_cakes_six]
  erb :cakes
end
