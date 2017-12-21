class Bill < ApplicationRecord

  belongs_to :customer
  belongs_to :user

  #has_many :activities, through: :customer

  validates :customer, presence: true
  #validates :date, presence: true
  #validates :payment_method, presence: true
  validates :vat, presence: true

  before_save :set_taxable, :set_total_cost

  def activities
    customer.activities.each do |a|
      if a.billed == false
        activities << a
        a.billed = true
      end
    end
  end

  #caclulate the taxable bringing the activities of a customer
  #we don't have variable hourly rate but we have 10 €
  def set_taxable
    self.taxable = 0
    self.activities.each do |a|
      self.taxable += a.hours_diff * 10
    end
    self.taxable
  end

  #bring the taxable and add discount, VAT and additional cost
  def set_total_cost
    self.total_cost = (self.taxable - self.taxable * (self.discount.to_f/100)).round(2)
    self.total_cost = (self.total_cost + self.total_cost * (self.vat.to_f/100)).round(2)
    if self.additional_cost != nil
      (self.total_cost += self.additional_cost).round(2)
    else
      self.total_cost
    end
    self.total_cost = self.total_cost
  end

  #calculate the deadline based on the paymenth method and bill date
  def deadline
    @days = self.payment_method.to_i
    self.date + @days
  end

  #search for business name
  def self.search(search)
    if search
      includes(:customer).where('business_name LIKE ?', "%#{search}%").references(:customer)
    else
      all
    end
  end

end
