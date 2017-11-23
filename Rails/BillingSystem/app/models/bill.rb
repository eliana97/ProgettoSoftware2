class Bill < ApplicationRecord
  belongs_to :customer
  belongs_to :user

  has_many :activities, through: :customer

  validates :customer, presence: true
  validates :date, presence: true
  validates :payment_method, presence: true
  validates :vat, presence: true

  #before_save :set_taxable, :set_total_cost

  # def new_activities
  #   activities.map do |a|
  #     a if a.billed == false
  #   end
  # end
  #
  # def set_taxable
  #   self.taxable = 0
  #   activities.each do |a|
  #     if a.billed == false
  #       self.taxable += a.hours_diff * 10
  #       a.update billed: true
  #     end
  #   end
  #   #update taxable: activities.map { |a| a.hours_diff * 10 if a.billed == false }.reduce(:+)
  #   update taxable: taxable
  # end
  #
  # def set_total_cost
  #   self.total_cost = (self.taxable - self.taxable * (self.discount.to_f/100)).round(2)
  #   self.total_cost = (self.total_cost + self.total_cost * (self.vat.to_f/100)).round(2)
  #   if self.additional_cost != nil
  #     (self.total_cost += self.additional_cost).round(2)
  #   else
  #     self.total_cost
  #   end
  #   update total_cost: total_cost
  # end

  def set_taxable
     update taxable: activities.map{ |a| a.hours_diff * 10}.reduce(:+)
  end

  def set_total_cost
    self.total_cost =  (self.taxable - self.taxable * (self.discount.to_f/100)).round(2)
    self.total_cost = (self.total_cost + self.total_cost * (self.vat.to_f/100)).round(2)
    if self.additional_cost != nil
      (self.total_cost += self.additional_cost).round(2)
    else
      self.total_cost
    end
    update total_cost: self.total_cost
  end

  def deadline
    @days = self.payment_method.to_i
    self.date + @days
  end

  def self.search(search)
    if search
      includes(:customer).where('business_name LIKE ?', "%#{search}%").references(:customer)
    else
      all
    end
  end

end
