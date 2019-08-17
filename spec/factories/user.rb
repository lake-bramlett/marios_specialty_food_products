require 'rails_helper'

FactoryBot.define do
   factory :user do
   email {"testytesterson@testing.com"}
   password {"testpassword"}
   admin {true}
   end
end
