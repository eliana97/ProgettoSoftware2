class Activity < ApplicationRecord
  belongs_to :customer
  belongs_to :user

  validates :customer, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  after_save :set_billed

  def set_billed
    self.billed = false
  end

  # calculate quantity of hours in the activity
  def hours_diff
    ((self.end_time - self.start_time)/3600).to_i
  end

  #method for search business name
  def self.search(search)
    if search
      includes(:customer).where('business_name LIKE ?', "%#{search}%").references(:customer)
    else
      all
    end
  end

end
