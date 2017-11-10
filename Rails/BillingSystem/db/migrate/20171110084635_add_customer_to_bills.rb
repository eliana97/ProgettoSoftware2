class AddCustomerToBills < ActiveRecord::Migration[5.1]
  def change
    add_reference :bills, :customer, foreign_key: true
  end
end
