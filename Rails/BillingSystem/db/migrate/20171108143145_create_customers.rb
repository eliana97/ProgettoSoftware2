class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :business_name
      t.string :address
      t.string :phone
      t.string :email
      t.string :vat_number

      t.timestamps
    end
  end
end
