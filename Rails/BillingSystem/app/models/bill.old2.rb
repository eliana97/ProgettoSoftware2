class Bill < ApplicationRecord
  belongs_to :customer
  belongs_to :user

  validates :customer, presence: true
  validates :date, presence: true
  validates :payment_method, presence: true
  validates :vat, presence: true

  def last_bill_date
    
    customer.bills.last.date
  end

  def customer_activities
    @activities = customer.activities
  end

  def new_bill
    @date = self.last_bill_date
    @new_activities = []
    @activities = self.customer_activities
    @activities.each do |a|
      if a.date > @date
        @new_activities << a
      end
    end
    @new_activities
  end

  def get_taxable
    @taxable = 0
    @new_activities = self.new_bill
    @new_activities.each do |a|
      @taxable += a.hours_diff * 10
    end
    @taxable
  end

  def get_total_cost
    @total_cost = (@taxable - @taxable * (self.discount.to_f/100)).round(2)
    @total_cost = (@total_cost + @total_cost * (self.vat.to_f/100)).round(2)
    if self.additional_cost != nil
      (@total_cost = @total_cost + self.additional_cost).round(2)
    else
      @total_cost
    end
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
