FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "user#{n}@factory.com"}
    password 'foobar'
    first_name 'John'
    last_name 'Doe'
    role 'notadmin'
  end
  factory :visible_user, :parent => :user do
    visible true
  end
end
