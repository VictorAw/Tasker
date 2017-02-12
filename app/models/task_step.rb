class TaskStep < ApplicationRecord
  validates :title, :finished, presence: true

  has_one :task
end
