FactoryBot.define do
  factory :payment do
    association :subscription
    amount { 99.90 }
    status { "pending" }
    external_id { "pay_#{SecureRandom.hex(4)}" }
  end
end
