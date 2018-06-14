require 'sinatra/activerecord'


class Student < ActiveRecord::Base
    has_one :laptop 
    has_one :submission
    has_many :student_classroom_seats
    has_many :student_seats, through: :student_classroom_seats
end

class ClassroomSeat < ActiveRecord::Base
has_many :student_classroom_seats
has_many :students, through: :student_classroom_seats

end


class StudentClassroomSeat < ActiveRecord::Base
    belongs_to :student
    belongs_to :classroom_seat

end

class Laptop < ActiveRecord::Base
    belongs_to :student

end

class Submissions < ActiveRecord::Base
    belongs_to :student
    
end
