FactoryBot.define do
  factory :bill do
    vat "22"
    customer
    user
  end
end
