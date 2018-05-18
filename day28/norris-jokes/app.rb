require './norris-jokes'

my_chuck = ChuckJokes.new

# x = ARGV

# if x.length == 'random' 
#     puts my_chuck.random
# elsif x[0] == "help"
#     puts my_chuck.help
# elsif x[0].is_a? Numeric
#     puts my_chuck.get_joke_by_id(x)
# elsif x.length>1
#     puts my_chuck.replace_name(ARGV[0],ARGV[1] )
# end

if ARGV == 0
        puts my_chuck.help
end

# puts x
# puts my_chuck.get_joke_by_id(497)
# puts my_chuck.replace_name('Erisay', 'Perez')