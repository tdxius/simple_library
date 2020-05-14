FactoryBot.define do
  factory :book do
    category

    name { Faker::Company.buzzword }
    author { Faker::Name.name }
    year { rand(1800..2020) }
  end
end