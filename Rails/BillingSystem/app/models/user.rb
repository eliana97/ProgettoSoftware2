class User < ApplicationRecord
  include Clearance::User

  has_many :activities
  has_many :bills
  has_many :customers
end
