FactoryGirl.define do

  factory :user do
    sequence(:first_name) { |n| "user_#{n}" }
    sequence(:last_name) { |n| "smith_#{n}" }
    sequence(:email) { |n| "user_#{n}@example.com" }
    password '123456'
    password_confirmation '123456'
  end
end

