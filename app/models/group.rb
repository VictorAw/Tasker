class Group < ApplicationRecord
  validates :name, presence: true

  has_many :group_assignments
  has_many :users, through: :group_assignments
end
