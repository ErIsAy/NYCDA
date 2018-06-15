class Student < ApplicationRecord
  has_many :students_cohort
  has_many :cohorts, through: :students_cohort
end
