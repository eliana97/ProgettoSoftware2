class Activity < ApplicationRecord
  belongs_to :customer

  validates :customer, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
