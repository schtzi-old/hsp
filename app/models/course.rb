class Course < ApplicationRecord
  LEVEL = %w[beginner intermediate advanced]
  belongs_to :sport

  validates :name, :capacity, :start_date, :end_date, :level, presence: true
  validates :start_date, comparison: { less_than_or_equal_to: :end_date }
  validates :level, inclusion: { in: LEVEL }

  validates :start_date, comparison: { less_than_or_equal_to: :end_date }
end
