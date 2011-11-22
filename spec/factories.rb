FactoryGirl.define do
  factory :user do
    email 'user@example.com'
    password 'foobar'
    first_name 'John'
    last_name 'Doe'
  end
  factory :visible_user, :parent => :user do
    visible true
  end
end
