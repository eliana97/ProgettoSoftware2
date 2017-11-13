class Bill < ApplicationRecord
  belongs_to :customer

  validates :customer, presence: true
  validates :date, presence: true
  validates :payment_method, presence: true
  validates :vat, presence: true

  def get_taxable
    @activities = customer.activities
    @activities.each do |a|
      @taxable = a.hours_diff * 10
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

end
