class InstructorsController < ApplicationController
    def index
      @instructors = Instructor.all
    end

    def create
      Instructor.create(instructor_params)

      redirect_to instructors_path
    end

    def new
      @instructor = Instructor.new
    end

    def edit
      @instructor = Instructor.find(params[:id])
    end

    def show
      @instructor = Instructor.find(params[:id])
    end

    def update
      @instructor = Instructor.find(params[:id])
      @instructor.update(instructor_params)

      redirect_to instructors_path
    end

    def destroy
      Instructor.destroy(params[:id])

      redirect_to instructors_path
    end

    private
    def instructor_params
      params.require(:instructor).permit(:f_name, :l_name, :date_of_birth, :salary, :highest_completed_education)

    end
end


# instructors GET    /instructors(.:format)                                                                   instructors#index
#             POST   /instructors(.:format)                                                                   instructors#create
# new_instructor GET    /instructors/new(.:format)                                                            instructors#new
# edit_instructor GET    /instructors/:id/edit(.:format)                                                      instructors#edit
#  instructor GET    /instructors/:id(.:format)                                                               instructors#show
#             PATCH  /instructors/:id(.:format)                                                               instructors#update
#             PUT    /instructors/:id(.:format)                                                               instructors#update
#             DELETE /instructors/:id(.:format)                                                               instructors#destroy
