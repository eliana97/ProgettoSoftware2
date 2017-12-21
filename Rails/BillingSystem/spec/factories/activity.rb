FactoryBot.define do
  factory :activity do
    description "Prova"
    date  Date.parse("2017-1-1")
    start_time Time.parse("8:00:00")
    end_time Time.parse("9:00:00")
    customer
    user
  end
end
