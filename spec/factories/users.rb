FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name}
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
  end
end
