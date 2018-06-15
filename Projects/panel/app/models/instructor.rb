class Instructor < ApplicationRecord
  has_many :instructors_cohort
  has_many :cohorts, through: :instructors_cohort
end
