json.extract! bill, :id, :date, :payment_method, :vat, :taxable, :total_cost, :discount, :additional_cost, :created_at, :updated_at
json.url bill_url(bill, format: :json)
