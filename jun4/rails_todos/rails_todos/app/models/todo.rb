class Todo < ApplicationRecord
  validates :name, presence:true

  has_many :todo_comments, dependent: :destroy
end
