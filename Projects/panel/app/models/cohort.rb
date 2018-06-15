class Cohort < ApplicationRecord
  has_many :students_cohorts
  has_many :instructors_cohorts
  has_many :course_cohorts
  has_many :students, through: :students_cohorts
  has_many :instructors, through: :instructors_cohorts

  belongs_to :course
end
