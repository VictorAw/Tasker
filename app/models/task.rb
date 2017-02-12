class Task < ApplicationRecord
  validates :task_duration, :deadline, :finished, :manager_id, :title, presence: true

  has_many :task_assignments
  has_many :users, through: :task_assignments
  has_one :manager,
    class_name: User,
    primary_key: id,
    foreign_key: manager_id
  has_many :task_steps
end
