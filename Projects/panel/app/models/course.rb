class Course < ApplicationRecord
  has_one :cohort, dependent: :destroy
end
