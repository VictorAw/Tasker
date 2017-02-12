class User < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true

  has_many :task_assignments
  has_many :tasks, through: :task_assignments

  has_many :group_assignments
  has_many :groups, through: :group_assignments
end
