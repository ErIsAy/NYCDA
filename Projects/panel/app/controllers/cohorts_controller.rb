class CohortsController < ApplicationController

  before_action :set_cohort, only: [:show,:edit, :update, :destroy]

    def index
      @cohorts = Cohort.all
    end

    def create
      Cohort.create(cohort_params)

      redirect_to cohorts_path
    end

    def new
      @courses = Course.all

      @cohort = Cohort.new
    end

    def edit
      @courses = Course.all
    end

    def show

    end

    def update
      @cohort.update(cohort_params)

      redirect_to cohorts_path
    end

    def destroy
      @cohort.destroy

      redirect_to cohorts_path
    end

    private

    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date, :course_id)
    end

    def set_cohort
      @cohort = Cohort.find(params[:id])
    end

end
