class StudentsController < ApplicationController
    def index
      @students = Student.all
    end

    def create
      Student.create(student_params)

      redirect_to students_path
    end

    def new
      @student = Student.new

    end

    def edit
      @student = Student.find(params[:id])
    end

    def show
      @student = Student.find(params[:id])
    end

    def update
      @student = Student.find(params[:id])
      @student.update(student_params)

      redirect_to students_path
    end

    def destroy
      Student.destroy(params[:id])

      redirect_to students_path
    end

    private

    def student_params
      params.require(:student).permit(:f_name, :l_name, :date_of_birth, :highest_completed_education)
    end
end

#
# students GET    /students(.:format)                                                                      students#index
#          POST   /students(.:format)                                                                      students#create
# new_student GET    /students/new(.:format)                                                               students#new
# edit_student GET    /students/:id/edit(.:format)                                                         students#edit
#  student GET    /students/:id(.:format)                                                                  students#show
#          PATCH  /students/:id(.:format)                                                                  students#update
#          PUT    /students/:id(.:format)                                                                  students#update
#          DELETE /students/:id(.:format)                                                                  students#destroy
