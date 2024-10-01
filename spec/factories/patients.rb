FactoryBot.define do
  factory :patient do
    name { Faker::Name.name }
    age { Faker::Number.between(from: 18, to: 100) }
    contact_number { Faker::PhoneNumber.cell_phone }
    doctor { association :user, :doctor }  # Ensure the doctor association is correctly created
  end
end
