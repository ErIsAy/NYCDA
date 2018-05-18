require "./houseclass"
require "./roomclass"


# prompt the user to enter the desired # of rooms.
# save the desired # of rooms.
# prompt the user to enter the dimensions of each room.
# display the total area.

class Housebuilder 
    attr_accessor :number_of_rooms
    def initialize
        my_house = House.new(1)
        my_house2 = House.new(1)
        my_room = Room.new(2, 2)
        p my_room.calculate_area
        # p my_house
        @number_of_rooms = number_of_rooms
    end



end

my_housebuilder = Housebuilder.new 