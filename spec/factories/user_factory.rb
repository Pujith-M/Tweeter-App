FactoryBot.define do
  factory :user do
    name { 'Jhon' }

    sequence :email do |n|
      "person#{n}@example.com"
    end

    sequence :username do |n|
      "#person#{n}"
    end

    password { 'password@123' }
  end
end