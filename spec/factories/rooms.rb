# spec/factories/rooms.rb
FactoryBot.define do
  factory :room do
    room_name { Faker::Lorem.word }
    charge { Faker::Number.number(10) }
  end
end