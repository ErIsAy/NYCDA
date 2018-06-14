class WelcomeController < ApplicationController

  def index
    @students_cohorts = StudentsCohort.all
    @instructors_cohorts = InstructorsCohort.all
    @cohorts = Cohort.all
  end

end
