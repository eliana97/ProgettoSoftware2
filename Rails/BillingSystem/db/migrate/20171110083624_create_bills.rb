class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.date :date
      t.string :payment_method
      t.integer :vat
      t.decimal :taxable
      t.decimal :total_cost
      t.integer :discount
      t.decimal :additional_cost
      t.date :deadline
      
      t.timestamps
    end
  end
end
