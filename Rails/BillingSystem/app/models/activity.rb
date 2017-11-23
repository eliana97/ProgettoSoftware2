class Activity < ApplicationRecord
  belongs_to :customer
  belongs_to :user

  validates :customer, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true



  def set_billed
    update billed: false
  end

  def hours_diff
    ((self.end_time - self.start_time)/3600).to_i
  end

  def self.search(search)
    if search
      includes(:customer).where('business_name LIKE ?', "%#{search}%").references(:customer)
    else
      all
    end
  end

end
