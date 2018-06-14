class Cohort < ApplicationRecord
  belongs_to :course
  has_many :students
  has_many :instructors
  has_many :students_cohorts
has_many :instructors_cohorts
end
