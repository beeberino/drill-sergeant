FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password"} 
    password_confirmation { "password" }
    confirmed_at { Date.today }
  end

  factory :admin do
    email { 'admin' + Faker::Internet.email }
    password { "admin-password"} 
    password_confirmation { "admin-password" }
    confirmed_at { Date.today }
    admin {true}
  end
end