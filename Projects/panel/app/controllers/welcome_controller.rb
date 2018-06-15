class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user

    @students_cohorts = StudentsCohort.all
    @instructors_cohorts = InstructorsCohort.all
    @cohorts = Cohort.all
    @cohort = Cohort.new

  end

end