class HomeController < ApplicationController

    def index
        @cakes = Cake.first(3)
        @muffins = Muffin.first(3)
    end

    
end
