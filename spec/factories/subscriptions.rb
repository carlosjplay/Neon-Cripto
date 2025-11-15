FactoryBot.define do
  factory :subscription do
    association :user
    plan { "premium" }
    status { "active" }
    external_id { "sub_#{SecureRandom.hex(4)}" }
    amount { 99.90 }
  end
end
