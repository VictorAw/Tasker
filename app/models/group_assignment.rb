class GroupAssignment < ApplicationRecord
  validates :user_id, :group_id, presence: true

  has_one :user
  has_one :group
end
