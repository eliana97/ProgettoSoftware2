json.extract! customer, :id, :name, :surname, :address, :phone, :email, :vat_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
