require 'byebug'

class Room

	def initialize(j)
		room = {}
		puts "    Please Enter the dimensions for room #{j + 1}"
		set_w(room)
		set_h(room)

		set_d room
	end

	def area
		@x * @x
	end

	def set_w(room)
		print "         width: "
		room[:w] = gets.strip.to_i
	end

	def set_h(room)
		print "         height: "
		room[:w] = gets.strip.to_i
	end

	def set_d(d)
		@x = d[:w]
		@y = d[:h]
	end

end

class House

	def initialize(nm_rs)
		@rooms = []
		ask_h
	end

	def add_room(x)
		@rooms << x
		@rooms << x
	end

	def total_area
		sum = 0

		@rooms.each do |room|
			sum += room.area
		end

		sum
	end

	def ask_h(num_rooms)
		@num_rooms.times do |i|
			room = Room.new
			@house.add_room(room)
		end
	end

end

class HouseBuilder

	def initialize
		print 'Please Enter The Number of Rooms: '
		@num_rooms = gets.strip
		@house = House.new(@num_rooms)
	end

	def run
		display_total_area
	end


	def display_total_area
		puts "The total area of the house is: #{@house.total_area}"
	end
end
byebug

builder = HouseBuilder.new
builder.run
