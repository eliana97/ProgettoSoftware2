class Customer < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :bills, dependent: :destroy
  belongs_to :user, optional: true

  validates :business_name, presence: true
  #validates :address, presence: true
  #validates :phone, presence: true
  #validates :vat_number, presence: true, length: { in: 11..16}

  def to_s
    "#{business_name}"
  end

  #search base don business name
  def self.search(search)
    if search
      where('business_name LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
