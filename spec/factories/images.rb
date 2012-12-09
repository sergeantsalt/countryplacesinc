# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    listing_id 1
    filename "MyString"
    path "MyString"
    user_id 1
    ordering 1
    published false
  end
end
