# Save the width abd height of each room
# Calculate the area of the room

class Room
    attr_accessor :width, :height

    def initialize(width, height)
        @width = width
        @height = height
    end

    def calculate_area
        @width * @height
    end 


end

# my_room = Room.new(2,2)

# p my_room.calculate_area