# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    street_num "MyString"
    street "MyString"
    title "MyString"
    short_description "MyText"
    description "MyText"
    city "MyString"
    state 1
    postcode "MyString"
    county "MyString"
    latitude "MyString"
    longitude "MyString"
    address "MyString"
    price "9.99"
    acres 1.5
    hits 1
    featured false
  end
end
