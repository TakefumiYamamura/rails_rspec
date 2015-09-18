# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    association :user
    text {Faker::Lorem.word}
    image {Faker::Internet.url}
  end
end
