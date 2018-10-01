# spec/factories/orders.rb
FactoryBot.define do
  factory :order do
    order_number { Faker::Number.number(10) }
    first_name { Faker::Name.first_name }
  end
end