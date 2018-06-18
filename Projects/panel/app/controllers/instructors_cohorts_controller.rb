class InstructorsCohortsController < ApplicationController

  def index
    @instructors_cohorts = InstructorsCohort.all
  end

  def create
    InstructorsCohort.create(instructors_cohort_params)

    # redirect_to instructors_cohorts_path
    redirect_to welcome_index_path
  end

  def new
    @instructors = Instructor.all
    @cohorts = Cohort.all

    @instructor_cohort = InstructorsCohort.new
  end

  def edit
    @instructors = Instructor.all
    @cohorts = Cohort.all

    @instructor_cohort = InstructorsCohort.find(params[:id])

  end

  def show
    @instructor_cohort = InstructorsCohort.find(params[:id])
  end

  def update


    @instructor_cohort = InstructorsCohort.find(params[:id])
    @instructor_cohort.update(instructors_cohort_params)

    redirect_to instructors_cohorts_path
  end

  def destroy
    InstructorsCohort.destroy(params[:id])

    redirect_to instructors_cohorts_path
  end

  private

  def instructors_cohort_params
    params.require(:instructors_cohort).permit(:instructor_id, :cohort_id)
  end

end
