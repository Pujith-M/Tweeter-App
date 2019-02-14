FactoryBot.define do
  factory :user, aliases: [:follower, :followed]do
    name { 'Jhon' }

    sequence :email do |n|
      "person#{n}@example.com"
    end

    sequence :username do |n|
      "#person#{n}"
    end

    password { 'password@123' }

    factory :user_with_followers do
      transient do
        followers_count { 5 }
      end

      after(:create) do |user, evaluator|
        create_list(:relationship, evaluator.followers_count, followed: user)
      end
    end
  end
end