class TaskAssignment < ApplicationRecord
  validates :user_id, :task_id, presence: true

  has_one :user
  has_one :task
end
