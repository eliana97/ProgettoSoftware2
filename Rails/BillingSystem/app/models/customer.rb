class Customer < ApplicationRecord
  has_many :activities
  has_many :bills

  validates :business_name, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :vat_number, presence: true, length: { in: 11..16}

  def to_s
    "#{business_name}"
  end
end
