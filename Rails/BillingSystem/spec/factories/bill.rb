FactoryBot.define do
  factory :bill do
    vat "22"
    date  Date.parse("2017-1-1")
    customer
    user
  end
end
