class StudentsCohortsController < ApplicationController
  def index
    @students_cohorts = StudentsCohort.all
  end

  def create
    StudentsCohort.create(students_cohort_params)

    # redirect_to students_cohorts_path
    redirect_to welcome_index_path
  end

  def new
    @students = Student.all
    @cohorts = Cohort.all

    @student_cohort = StudentsCohort.new
  end

  def edit
    @students = Student.all
    @cohorts = Cohort.all

    @student_cohort = StudentsCohort.find(params[:id])

  end

  def show
    @student_cohort = StudentsCohort.find(params[:id])
  end

  def update


    @student_cohort = StudentsCohort.find(params[:id])
    @student_cohort.update(students_cohort_params)

    redirect_to students_cohorts_path
  end

  def destroy
    StudentsCohort.destroy(params[:id])

    redirect_to instructors_cohorts_path
  end

  private

  def students_cohort_params
    params.require(:students_cohort).permit(:student_id, :cohort_id)
  end
end

# new_students_cohort GET    /students_cohort/new(.:format)                          students_cohort#new
# edit_students_cohort GET   /students_cohort/:id/edit(.:format)                     students_cohort#edit
#     students_cohort GET    /students_cohort/:id(.:format)                          students_cohort#show
#                     PATCH  /students_cohort/:id(.:format)                          students_cohort#update
#                     PUT    /students_cohort/:id(.:format)                          students_cohort#update
#                     DELETE /students_cohort/:id(.:format)                          students_cohort#destroy
