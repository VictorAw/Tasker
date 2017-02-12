class Configuration < ApplicationRecord
  validates :workday_start, :workday_end, presence: true
end
