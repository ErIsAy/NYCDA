# num_of_rooms
# list_of_rooms       "array"
# get_total_area




class House 
 attr_accessor :number_of_rooms
    def initialize(number_of_rooms)
        # my_room = Room.new(2, 2)
        # p my_room.calculate_area
        @number_of_rooms = number_of_rooms
       p @list_of_rooms = []
    end
    
    def get_total_area
       @list_of_rooms.push(@number_of_rooms) #iterate through the rooms
    end

end

my_house = House.new(1)

