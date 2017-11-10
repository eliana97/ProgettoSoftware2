class Bill < ApplicationRecord
  belongs_to :customer

  validates :customer, presence: true
  validates :date, presence: true
  validates :payment_method, presence: true
  validates :vat, presence: true

end
