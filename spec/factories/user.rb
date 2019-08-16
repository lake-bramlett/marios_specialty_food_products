require 'rails_helper'

FactoryBot.define do
   factory :user do
   email {"test_user@testing.com"}
   password {"testpassword"}
   admin {true}
   end
end
