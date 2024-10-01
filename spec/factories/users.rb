FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
    name { Faker::Name.name }  # Add the name attribute to the factory

    trait :doctor do
      role { 'doctor' }
    end

    trait :receptionist do
      role { 'receptionist' }
    end
  end
end
