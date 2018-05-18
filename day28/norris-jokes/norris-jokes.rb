require 'chuck_norris'
require 'colorize'

class ChuckJokes
    def help
        "W/E dude"
    end

    def get_joke_by_id(id)
        bug_joke = ChuckNorris::JokeFinder.find_joke(id)
        bug_joke.joke
    end

    def replace_name(first_name, last_name)
        joke = ChuckNorris::JokeFinder.get_joke(first_name: first_name, last_name: last_name)
        joke.joke
    end

    def random
        joke = ChuckNorris::JokeFinder.get_joke
        joke.joke
    end
end

my_chuckjones = ChuckJokes.new

# puts my_chuckjones.get_joke_by_id(497)
# puts my_chuckjones.replace_name('Erisay', 'Perez')
# puts my_chuckjones.random


# random
# jokes = ChuckNorris::JokeFinder.get_jokes(3)
# puts jokes[0].joke 