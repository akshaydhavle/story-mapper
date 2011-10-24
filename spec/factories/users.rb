# Read about factories at http://github.com/thoughtbot/factory_girl  
FactoryGirl.define do
  # sequences to generate standard things.  Can use these in the
  # factory definitions below.
  sequence(:name)     { Faker::Name.name }
  sequence(:email)    { Faker::Internet.email }
  sequence(:username) { Faker::Internet.user_name }

  factory :user do
    username      # uses the sequence above
    email         # uses the sequence above
    password     'I am a password'
  end
end
